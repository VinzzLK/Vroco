.class public Lcom/miui/home/launcher/RemoteShortcutInfo;
.super Lcom/miui/home/launcher/AppInfo;
.source "RemoteShortcutInfo.java"


# static fields
.field private static sDefaultIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mLocalIconUri:Landroid/net/Uri;

.field private mNetIconUrl:Ljava/lang/String;

.field protected mRemotePkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/miui/home/launcher/AppInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/AppInfo;-><init>()V

    .line 38
    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 40
    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    return-void
.end method

.method private getIconFromUri(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mRemotePkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",getLocalIconUri src: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProgressIcon"

    .line 77
    invoke-static {v2, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.resource"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0, v3}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mRemotePkgName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",getBitmapFromUri: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 93
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getDefaultProgressIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 95
    :cond_2
    iput-boolean v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 96
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v3}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 0

    .line 135
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 p1, 0xf

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultProgressIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 139
    sget-object v0, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 141
    sget-object p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-static {v1, p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    sget-object p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 147
    sget-object p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->sDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 101
    iget p2, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v0, 0xf

    if-ne p2, v0, :cond_1

    .line 102
    iget-boolean p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconFromUri(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0xb

    if-eq p2, v0, :cond_3

    const/16 v0, 0xd

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 109
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_5

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getIconFromUri(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getLocalIconUri()Landroid/net/Uri;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mLocalIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getNetIconUrl()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mNetIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mRemotePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 3

    .line 123
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 125
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xf

    if-ne p2, v1, :cond_1

    .line 126
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->handleClick(Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setLocalIconUri(Landroid/net/Uri;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mLocalIconUri:Landroid/net/Uri;

    return-void
.end method

.method public setNetIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mNetIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mRemotePkgName:Ljava/lang/String;

    return-void
.end method
