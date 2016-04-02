---
layout: post
title: "Login Details and other interview questions"
tags:
 -
---

The question was: "In as much detail as you can, describe what happens when, when you are on the login page of a website, and you have entered a username and password, you then press the Submit button (or equivalent), and describe some possible attacks against this login page."

Of course, the troll response to this question would start with "Well, when you click the mouse, an electrical impulse is sent- usually either via th mouse cord or via bluetooth-" but assuming that this is a webdev question, not a hardware question, and assuming that I'm actually trying to impress an interviewer, rather than speaking out against the series of absurd processes which involve job and employee selection in our current economic environment- a different answer is called for.

Your login page should always be over SSL. Assuming that it is, the username and password are sent to whatever endpoint the Submit button resolves to- I don't know whether we want to discuss DNS resolution here- and then the server looks up the user via their username. If there is no user by that username, return login error to the front end. Some sites prefer to not admit that a user is or is not exixtant, so they might say "invalid login; reset password?" rather than "there is no user with that username".

If there is a user with that username, the password should be one-way hashed and compared to the stored one-way-hashed password for that user, so at no point is the "real" (unencrypted and retrievable) password ever stored at rest (i.e in a database). The password should be hashed at the first opportunity on the server side, so that it spends as little time as possible unhashed, and so that as few as possible parts of the system interact with the unhashed password. The password should never be logged.

There should be some mechanism to disallow many repeated retries of the wrong password, so that brute-forcing password login is prevented. (Especially for a medical records system login!)

If the password matches, a revokable and expirable token should be generated and sent to the client. The client will include this token in all communications with the server, and the server will check the token against the db every time to confirm that the client is still authorized. The user or server can revoke this token at will- the user by interacting with a UI that shows last login and origin of login (which can be sent by the client as part of the login request).

I hope to add to the above when the time, energy, and knowledge arises.
