.class public Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute$NativeRoute;
.super Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;
.source "AppRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeRoute"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;)V

    return-void
.end method


# virtual methods
.method public route(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)Z
    .locals 2

    .line 44
    iget-object v0, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->actionType:Ljava/lang/String;

    const-string v1, "native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->nextRoute(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)Z

    move-result p0

    return p0

    .line 47
    :cond_0
    iget-object p0, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    const-string p2, "com.android.thememanager"

    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.miui.themestore"

    if-nez v0, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->access$000(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    invoke-static {p1, v1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->access$000(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 53
    invoke-static {p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->access$000(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v0

    .line 59
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "route: pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppRoute"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_4

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can\'t get launch intent appItem: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_4
    const/high16 p0, 0x10200000

    .line 64
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
