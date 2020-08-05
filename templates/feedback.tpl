<html>
    <head>
        <meta charset="utf-8" />
    </head>
    <body>
        <form method="post">
            <p><input type="text" name="name" /></p>
            <p><input type="textbox" name="review" /></p>
            <p><input type="submit" value="Отправить" /></p>
        </form>

		<div class="feedback_response">
            {{RESPONSE}}
        </div>

        <div class="feedback_feed">
            {{FEEDBACKFEED}}
        </div>
    </body>
</html>
