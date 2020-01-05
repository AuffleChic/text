var bodyBgs = [];
        bodyBgs[0] = "images/01.jpg";
        bodyBgs[1] = "images/02.jpg";
        bodyBgs[2] = "images/03.jpg";
        bodyBgs[3] = "images/04.jpg";
        bodyBgs[4] = "images/05.jpg";

        var randomBgIndex = Math.round( Math.random() * 4 );

    //输出随机的背景图
        document.write('<style>body{background:url(' + bodyBgs[randomBgIndex] + ') no-repeat 50% 0}</style>');