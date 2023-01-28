from django.shortcuts import render
from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer

from sentiment.models import Comments


def index(request):
    database_comments = Comments.objects.all()
    if request.method == 'POST':
        sentence = request.POST.get('data')
        sid_obj = SentimentIntensityAnalyzer()
        sentiment_dict = sid_obj.polarity_scores(sentence)
        if sentiment_dict['compound'] >= 0.05:
            sentiment_result = "Positive"
        elif sentiment_dict['compound'] <= - 0.05:
            sentiment_result = "Negative"
        else:
            sentiment_result = "Neutral"
        Comments(comment=sentence, sentiment=sentiment_result).save()
        database_comments = Comments.objects.all()
        return render(request, "index.html", {'sentiment': sentiment_result, 'comments': database_comments})
    return render(request, "index.html", {'comments': database_comments})
