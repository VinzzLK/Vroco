.class public Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute$GeneralRoute;
.super Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;
.source "AppRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralRoute"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;)V

    return-void
.end method


# virtual methods
.method public route(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)Z
    .locals 3

    .line 84
    iget-object p0, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->actionUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_3

    iget-object p0, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object p0, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/utils/PackageUtils;->checkInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    .line 93
    :cond_1
    iget-object p0, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->actionUrl:Ljava/lang/String;

    .line 94
    iget-object p2, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    .line 98
    :try_start_0
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 p2, 0x10000000

    .line 102
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string p1, "AppRoute"

    const-string p2, "parse uri error"

    .line 106
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v0
.end method
