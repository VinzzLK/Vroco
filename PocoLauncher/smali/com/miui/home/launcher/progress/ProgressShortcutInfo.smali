.class public Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
.super Lcom/miui/home/launcher/RemoteShortcutInfo;
.source "ProgressShortcutInfo.java"


# instance fields
.field public mAppProgressServer:Ljava/lang/String;

.field mChangeProgressAnimator:Landroid/animation/ValueAnimator;

.field private mHasStarted:Z

.field public mProgressPercent:I

.field public mProgressStatus:I

.field public mProgressTitle:Ljava/lang/String;

.field private mWaveDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public static synthetic $r8$lambda$GLD6kEDskn0LG67CAAkMWG3mwl4(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->lambda$getFillShortcutIconConsumer$0(Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>()V

    const/4 v0, -0x5

    .line 46
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    const/16 v0, 0xf

    .line 55
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>()V

    const/4 v0, -0x5

    .line 46
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    const/16 v0, 0xb

    .line 60
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x4

    .line 61
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 64
    iput-object p4, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/miui/home/launcher/RemoteShortcutInfo;->mRemotePkgName:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    .line 67
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 68
    new-instance p3, Landroid/content/ComponentName;

    const-string p4, "invalidClassName"

    invoke-direct {p3, p2, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    iput-wide p5, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/Launcher;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateProgressIcon(Lcom/miui/home/launcher/Launcher;J)V

    return-void
.end method

.method private handleAutoInstallShortcutClick(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 230
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isSystemSdkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0x7f1004d4

    const/4 v0, 0x0

    .line 231
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 234
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.autoinstall.config.action.AUTOINSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.core"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_package_name"

    .line 236
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private isAutoInstallShortcut()Z
    .locals 1

    .line 272
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInstalledByServer(Landroid/content/Context;)Z
    .locals 1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getFillShortcutIconConsumer$0(Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 184
    instance-of p3, p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz p3, :cond_1

    .line 185
    check-cast p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 187
    iget-object p3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateProgressIcon(Lcom/miui/home/launcher/Launcher;J)V
    .locals 3

    .line 137
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/miui/home/launcher/Workspace;->isIdInCurrentScreen(J)Z

    move-result p2

    if-nez p2, :cond_0

    iget-wide p2, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v1, -0x65

    cmp-long p2, p2, v1

    if-eqz p2, :cond_0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide p2

    iget-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long p2, p2, v1

    if-nez p2, :cond_1

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->onProgressStatusChanged()V

    :cond_1
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    iget-wide p1, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isIdInCurrentScreen(J)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->invalidatePreviews()V

    :cond_2
    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getBuddyIconView()Landroid/view/View;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    return-object p0
.end method

.method public getBuddyIconView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 291
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IShortcutIcon;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method

.method public getWaveDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mWaveDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 3

    .line 211
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->isAutoInstallShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->handleAutoInstallShortcutClick(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 217
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/Application;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 222
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, -0x5

    if-eq p2, v0, :cond_2

    .line 223
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/progress/ProgressManager;->onProgressIconClicked(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public needShowProgress()Z
    .locals 1

    .line 82
    iget p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, -0x3

    if-eq p0, v0, :cond_1

    const/4 v0, -0x4

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 160
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "iconResource"

    .line 162
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "iconPackage"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "ProgressShortcutInfo"

    const-string p1, "progress shortcut\'s intent or component is null"

    .line 169
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onProgressFinished(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;-><init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0, p1, v1}, Lcom/miui/home/launcher/ScreenUtils;->asynIsAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/common/ResultRunnable;)V

    return-void
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->isInstalledByServer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/progress/ProgressManager;->onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/progress/ProgressManager;->removeProgressingInfo(Ljava/lang/String;)V

    .line 204
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz p0, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->onIconRemoved()V

    :cond_2
    return-void
.end method

.method public resetCheckBox()V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz p0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->resetCheckBox()V

    :cond_0
    return-void
.end method

.method public setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->onIconSetNull()V

    .line 311
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setStarted(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mHasStarted:Z

    return-void
.end method

.method public setWaveDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mWaveDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 176
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->onProgressStatusChanged()V

    :cond_0
    return-void
.end method

.method public updateStatus(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Landroid/net/Uri;J)V
    .locals 9

    .line 89
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->needShowProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p2, :cond_1

    .line 90
    iget v3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    if-eq v3, p2, :cond_1

    sub-int v4, p2, v3

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    .line 95
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;-><init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;IILcom/miui/home/launcher/Launcher;J)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mChangeProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    const/4 v0, -0x4

    if-eq p2, v0, :cond_2

    const/4 v0, -0x5

    if-ne p2, v0, :cond_3

    :cond_2
    const/16 v0, 0x64

    .line 113
    iput v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 117
    :cond_3
    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    if-ne v0, p2, :cond_4

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 118
    :cond_4
    iput-object p3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 119
    iput p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 120
    invoke-direct {p0, p1, p5, p6}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateProgressIcon(Lcom/miui/home/launcher/Launcher;J)V

    :cond_5
    if-eqz p4, :cond_8

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 124
    :cond_6
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    const/4 p2, 0x0

    .line 125
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 127
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 129
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    goto :goto_2

    .line 130
    :cond_7
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz p2, :cond_8

    .line 131
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    :cond_8
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
