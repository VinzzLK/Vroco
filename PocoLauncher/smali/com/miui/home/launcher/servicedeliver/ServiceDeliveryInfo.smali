.class public Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;
.super Lcom/miui/home/launcher/MIUIWidgetBasicInfo;
.source "ServiceDeliveryInfo.java"


# instance fields
.field public hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

.field public mLayoutHost:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;

.field public packageName:Ljava/lang/String;

.field public widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->widgetId:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->mLayoutHost:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;

    const/16 v0, 0x17

    .line 38
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    .line 40
    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->refreshAppNameByType(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;-><init>()V

    .line 47
    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 48
    iput p2, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->calculateSpan()V

    return-void
.end method

.method private calculateSpan()V
    .locals 3

    .line 102
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 104
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin()I

    move-result v2

    if-ge v0, v2, :cond_0

    return-void

    .line 109
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 112
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 113
    iput v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    :cond_1
    return-void
.end method

.method private refreshAppNameByType(Landroid/content/Context;)V
    .locals 2

    .line 61
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10035e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeliveryLayout()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->getDeliveryLayout()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    move-result-object p0

    return-object p0
.end method

.method protected getExtraIntentParams()Landroid/content/Intent;
    .locals 3

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v2, "pickerID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    const-string/jumbo v2, "ver"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    const-string v2, "default_source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string/jumbo v1, "verName"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .line 54
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/16 v0, 0x9

    .line 55
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->widgetId:I

    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->calculateSpan()V

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->refreshAppNameByType(Landroid/content/Context;)V

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 69
    iget p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->widgetId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "appWidgetId"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected parsePendingWidgetParams(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "pickerID"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v0, "appName"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    const-string/jumbo v0, "source"

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    .line 77
    iget v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    const-string/jumbo v2, "ver"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    const-string/jumbo v0, "verName"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string/jumbo v0, "status"

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    const-string v0, "default_source"

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    return-void
.end method
