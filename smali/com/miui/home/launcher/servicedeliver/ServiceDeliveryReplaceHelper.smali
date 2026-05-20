.class public Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;
.super Ljava/lang/Object;
.source "ServiceDeliveryReplaceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceDeliveryReplaceHelper"


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final replaceRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$KClcLyhrh0UcnunYGggykScvNEc(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->lambda$tryReplaceToServiceDelivery$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WUWmthv-UjITX40FJ8ag1YKl6O8(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->lambda$tryReplaceToServiceDelivery$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->replaceRunnable:Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private filterReplaceWidget(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 118
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.personalassistant.service.shortcut.widget.shortcut.MediumShortcutWidgetProvider"

    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.miui.personalassistant.service.shortcut.widget.smartshortcut.SmallSmartShortcutWidgetProvider"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.xiaomi.aireco.ui.widgets.AppCaryardsWidget2x2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.xiaomi.aireco.ui.widgets.AppCaryardsWidget2x4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$tryReplaceToServiceDelivery$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->toReplaceDelivery()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$tryReplaceToServiceDelivery$1()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryUtils;->isSupportServiceDelivery(Landroid/content/Context;)Z

    move-result v0

    .line 68
    sget-object v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryReplaceToDelivery: isSupportServiceDelivery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private putWidgetInfo(Landroid/os/Bundle;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    .line 135
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v0

    const-string v1, "replace_widget_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const-string v1, "replace_widget_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "widget_type"

    const/4 v1, 0x5

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    const-string/jumbo v1, "widget_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    if-lez v0, :cond_0

    .line 141
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v0

    const-string/jumbo v1, "widget_origin_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f10035e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "widget_title"

    .line 145
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->extension:Ljava/lang/String;

    const-string v1, "component_item_info_expand"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    const-string/jumbo v1, "widget_app_version"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    iget-object v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "widget_app_package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "widget_app_name"

    .line 149
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget p0, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const-string/jumbo v0, "widget_span_x"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    iget p0, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const-string/jumbo v0, "widget_span_y"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    iget-boolean p0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->canDragFromHomeToPA:Z

    const-string/jumbo v0, "widget_can_drag_from_home_to_pa"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    iget-boolean p0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetNumberWarningToast:Z

    const-string/jumbo v0, "widget_show_warning_toast"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    iget-object p0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    const-string/jumbo v0, "widget_warning_toast"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-boolean p0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetAddedToast:Z

    const-string/jumbo v0, "widget_show_add_toast"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p0, 0x3fd

    const-string v0, "add_source"

    .line 156
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p0, 0x16

    const-string v0, "picker_tip_source"

    .line 157
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    iget-object p0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v0, "picker_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p0, p2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->widgetExtras:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string/jumbo v0, "widgetExtraData"

    .line 162
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 164
    :cond_1
    iget-boolean p0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetAddedToast:Z

    if-eqz p0, :cond_2

    .line 165
    iget-object p0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    const-string/jumbo v0, "widget_added_toast"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_2
    iget p0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    const-string p2, "default_source"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private toReplaceDelivery()V
    .locals 6

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 84
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->filterReplaceWidget(Ljava/util/Set;)V

    .line 85
    invoke-static {v0}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "toReplaceDelivery: widgetItems  is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->updateReplacedStatus()V

    return-void

    .line 91
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 92
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 95
    invoke-direct {p0, v3, v1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->putWidgetInfo(Landroid/os/Bundle;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 97
    sget-object v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "toReplaceDelivery: replaceWidget "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->replaceWidget(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->updateReplacedStatus()V

    return-void
.end method

.method private updateReplacedStatus()V
    .locals 2

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p0

    const-string v0, "service_deliver_is_replaced"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getWidgetReplaceToDeliverRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->replaceRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public removeCallbacks(Landroid/os/Handler;)V
    .locals 4

    .line 176
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object v0

    const-string v1, "service_deliver_is_replaced"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 177
    sget-object v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume: widget to serviceDeliver isReplace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->getWidgetReplaceToDeliverRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public sendCallbacks(Landroid/os/Handler;I)V
    .locals 4

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object v0

    const-string v1, "service_deliver_is_replaced"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 191
    sget-object v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause: widget to serviceDeliver isReplace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;->getWidgetReplaceToDeliverRunnable()Ljava/lang/Runnable;

    move-result-object p0

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public tryReplaceToServiceDelivery()V
    .locals 1

    .line 65
    new-instance v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryReplaceHelper;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
