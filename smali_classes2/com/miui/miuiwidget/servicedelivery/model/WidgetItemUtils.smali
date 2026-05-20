.class public Lcom/miui/miuiwidget/servicedelivery/model/WidgetItemUtils;
.super Ljava/lang/Object;
.source "WidgetItemUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetItemUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static widgetUniqueMark(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 12
    :cond_0
    instance-of v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;

    if-eqz v1, :cond_1

    .line 13
    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;->appWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    instance-of v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    if-eqz v1, :cond_2

    .line 15
    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->productId:Ljava/lang/String;

    return-object p0

    .line 17
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot get widget unique mark, widgetItem class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WidgetItemUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
