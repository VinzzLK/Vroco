.class public Lcom/miui/home/launcher/LauncherAppWidgetInfo;
.super Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;
.source "LauncherAppWidgetInfo.java"


# instance fields
.field appWidgetId:I

.field public hostView:Lcom/miui/home/launcher/LauncherWidgetView;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasNotifiedInitialWidgetSizeChanged:Z

.field private mProgress:I

.field private mProvider:Landroid/content/ComponentName;

.field public needPending:Z

.field public packageName:Ljava/lang/String;

.field public removePending:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->removePending:Z

    .line 52
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->needPending:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    const/4 v0, 0x4

    .line 67
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    .line 68
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    return-void
.end method

.method public constructor <init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V
    .locals 3

    .line 72
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 73
    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 74
    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 75
    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 76
    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 77
    iget-wide v1, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v1, -0x64

    .line 78
    iput-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 79
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    .line 82
    :cond_0
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->setUser(Landroid/os/UserHandle;)V

    .line 83
    iget-object p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    .line 84
    iget p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    .line 85
    iget-object p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    .line 86
    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    .line 87
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 88
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    iget-boolean p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    .line 91
    iget-object p1, p2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    .line 92
    iget p1, p2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    iput p1, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    .line 93
    iget p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    .line 94
    iget p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    .line 95
    iget p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    .line 96
    iget p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerTipSource:I

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerTipSource:I

    .line 97
    iget-object p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerTrackId:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerTrackId:Ljava/lang/String;

    .line 98
    iget-boolean p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->canDragFromHomeToPA:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->canDragFromHomeToPA:Z

    .line 99
    iget-object p1, p2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->widgetExtras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->widgetExtras:Landroid/os/Bundle;

    .line 100
    iget-boolean p1, p2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiAutoScale:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiAutoScale:Z

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->refreshAppNameFromPackageManager(Landroid/content/Context;)V

    return-void
.end method

.method private refreshAppNameFromPackageManager(Landroid/content/Context;)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 240
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    .line 241
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public clearRestore()V
    .locals 1

    .line 195
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    return-void
.end method

.method public bridge synthetic clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 180
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 181
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 182
    iget v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 183
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 187
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAnnounceForDelete()Ljava/lang/String;
    .locals 1

    .line 175
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppWidgetId()I
    .locals 0

    .line 249
    iget p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    return p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getExtraIntentParams()Landroid/content/Intent;
    .locals 3

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v2, "pickerID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    const-string/jumbo v2, "ver"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appIconPreUrl:Ljava/lang/String;

    const-string v2, "iconUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadUri:Ljava/lang/String;

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlDark:Ljava/lang/String;

    const-string v2, "previewDark"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlLight:Ljava/lang/String;

    const-string v2, "previewLight"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    const-string v2, "default_source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string/jumbo v2, "verName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadAppInfo:Ljava/lang/String;

    const-string v1, "downloadAppInfo"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getLauncherProviderInfo()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProvider()Landroid/content/ComponentName;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public isRestore()Z
    .locals 1

    .line 191
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .line 229
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/16 v0, 0x17

    .line 230
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    :cond_0
    const/16 v0, 0x16

    .line 234
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->refreshAppNameFromPackageManager(Landroid/content/Context;)V

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 116
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 117
    iget p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "label"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "appWidgetProvider"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBindAppWidget(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 2

    .line 295
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-nez v0, :cond_0

    .line 296
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {p2, p1, v0, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/Launcher;II)V

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    iget-boolean p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    invoke-static {p1, v0, p2, v1, p0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->updateWidgetBlurOptions(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherWidgetView;IZ)V

    return-void
.end method

.method protected parsePendingWidgetParams(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "pickerID"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v0, "appName"

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    const-string/jumbo v0, "source"

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    .line 149
    iget v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    const-string/jumbo v2, "ver"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    const-string/jumbo v0, "verName"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string v0, "iconUri"

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appIconPreUrl:Ljava/lang/String;

    const-string/jumbo v0, "uri"

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadUri:Ljava/lang/String;

    const-string v0, "previewDark"

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlDark:Ljava/lang/String;

    const-string v0, "previewLight"

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlLight:Ljava/lang/String;

    const-string/jumbo v0, "status"

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    const-string v0, "default_source"

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    const-string v0, "downloadAppInfo"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadAppInfo:Ljava/lang/String;

    return-void
.end method

.method public resetPendingInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->removePending:Z

    .line 111
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->needPending:Z

    return-void
.end method

.method public setAppWidgetId(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProgress:I

    return-void
.end method

.method public setProvider(Landroid/content/ComponentName;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    .line 224
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setRestore()V
    .locals 1

    .line 199
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(appWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "| id_inDB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "| widgetProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unbind()V
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    return-void
.end method
