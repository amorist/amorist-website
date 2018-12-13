+++ 
draft = true
date = 2018-11-29T14:13:46+08:00
title = ""
slug = "" 
tags = ["mongodb"]
categories = ["教程"]
thumbnail = "<no value>"
description = ""
comments = true 
+++


Description
ObjectId(<hexadecimal>)
Returns a new ObjectId value. The 12-byte ObjectId value consists of:

a 4-byte value representing the seconds since the Unix epoch,
a 5-byte random value, and
a 3-byte counter, starting with a random value.


Attribute/Method	Description
str	Returns the hexadecimal string representation of the object.
ObjectId.getTimestamp()	Returns the timestamp portion of the object as a Date.
ObjectId.toString()	Returns the JavaScript representation in the form of a string literal “ObjectId(...)”.
ObjectId.valueOf()	Returns the representation of the object as a hexadecimal string. The returned string is the str attribute.