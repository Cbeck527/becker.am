---
layout: post
title:  "Is My Train Fucked?"
date:   2016-03-12
header_image: "/images/headers/2016-03-12-is-my-train-fucked.jpg"
---

If you've ever met me, you probably know that I _really_ like trains,
specifically the New York City Subway. I'm fascinated with the idea of moving 6+
million people around over 660 miles today. However, as with any public transit
system, there are often reliability problems with the service.

When I'm standing on the platform for a while waiting for a train, my first
question is always _"is my train fucked?"_

So I built a website - [ismytrainfucked.com](http://ismytrainfucked.com).

IsMyTrainFucked (IMTF) is written in python and intended to be an [AWS
Lambda](https://aws.amazon.com/lambda/) microservice.  I used
[Apex](http://apex.run) for function uploading, version management, and testing.

The way it works is actually pretty simple:

1. MTA information is regularly loaded into DynamoDB by the `update_log`
   function. A CloudWatch "scheduler" kicks this off every 15 minutes.
2. The `update_s3_site` function is invoked as a DynamoDB INSERT trigger, and a
   new `index.html` file is written to the IMTF S3 bucket.

With this, I don't have to pay for a server running 24/7, and the cost of
running this app is nearly zero. It was also really fun to learn about building
an application that is embedded entirely into the AWS ecosystem.

As always, the source code is [on
github](https://github.com/Cbeck527/is-my-train-fucked) - PRs welcome!

_[header photo credit: Jackie Barr](https://www.flickr.com/photos/jackiembarr/4492545580/)_
