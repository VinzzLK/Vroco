.class public Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryBeanUtils;
.super Ljava/lang/Object;
.source "ServiceDeliveryBeanUtils.java"


# direct methods
.method public static toAppWidgetInfo(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;)Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "LauncherServiceDeliveryBeanUtils"

    const-string p1, "appWidgetItem is null"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v1, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;->appWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 21
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    const/4 p0, 0x0

    .line 22
    iput-boolean p0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isNeedTrack:Z

    const-string p0, ""

    .line 24
    iput-object p0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    return-object v0
.end method

.method public static toMamlWidgetInfo(Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "LauncherServiceDeliveryBeanUtils"

    const-string v0, "mamlWidgetItem is null"

    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->layoutStyle:Ljava/lang/String;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 35
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 36
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    iput v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 38
    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 39
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->layoutStyle:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->productId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    .line 41
    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    iput v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    .line 42
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->resPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->downloadUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    .line 44
    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->versionCode:I

    iput v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    .line 45
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->lightPreviewUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlLight:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->darkPreviewUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlDark:Ljava/lang/String;

    .line 47
    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->fileSizeKb:I

    int-to-long v3, v1

    iput-wide v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    .line 48
    iput-boolean v2, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isNeedTrack:Z

    .line 49
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemInfo;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static toMamlWidgetItem(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "LauncherServiceDeliveryBeanUtils"

    const-string v0, "mamlWidgetInfo is null"

    .line 55
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;-><init>()V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->layoutStyle:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->productId:Ljava/lang/String;

    .line 61
    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    iput v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    .line 62
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->resPath:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->downloadUrl:Ljava/lang/String;

    .line 64
    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    iput v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->versionCode:I

    .line 65
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlLight:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->lightPreviewUrl:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlDark:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->darkPreviewUrl:Ljava/lang/String;

    .line 67
    iget-wide v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    long-to-int v1, v1

    iput v1, v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->fileSizeKb:I

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->title:Ljava/lang/String;

    return-object v0
.end method
