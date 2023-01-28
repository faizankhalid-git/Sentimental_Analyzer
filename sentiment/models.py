from django.db import models


class Comments(models.Model):
    comment_id = models.AutoField
    comment = models.CharField(max_length=1000, default='')
    sentiment = models.CharField(max_length=30, default='')
    date = models.DateField(auto_now_add=True)
