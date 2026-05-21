.class public Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetIdAllocator;
.super Ljava/lang/Object;
.source "WidgetIdAllocator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private allocMamlId(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private allocWidgetId(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Landroid/appwidget/AppWidgetHost;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public alloc(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Landroid/appwidget/AppWidgetHost;)I
    .locals 2

    .line 10
    iget v0, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetIdAllocator;->allocWidgetId(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;Landroid/appwidget/AppWidgetHost;)I

    move-result p0

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetIdAllocator;->allocMamlId(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)I

    move-result p0

    :goto_0
    return p0
.end method
