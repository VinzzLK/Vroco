.class public Lcom/miui/home/launcher/ShortcutInfo;
.super Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;
.source "ShortcutInfo.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/IUniqueKey;


# static fields
.field private static sRetainedList:Lcom/miui/home/launcher/RetainedList;


# instance fields
.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field private mAppType:I

.field protected mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

.field protected mBuddyForParent:Landroid/view/ViewGroup;

.field protected mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

.field private mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

.field protected mIconPackage:Ljava/lang/String;

.field public mIconType:I

.field private mInstallerPackageName:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field private mIsScreenIdChangeByResize:Z

.field private mMessageText:Ljava/lang/String;

.field protected mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

.field protected mShowDefaultIcon:Z

.field private mSystemApplicationConfig:Lcom/miui/home/launcher/SystemAppStubConfig;

.field private mTextBg:Ljava/lang/String;

.field protected mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

.field private mTile:[B

.field private mTrackMessage:Ljava/lang/String;

.field private mUniqueKey:Lcom/miui/home/launcher/interfaces/IUniqueKey;


# direct methods
.method public static synthetic $r8$lambda$QPbJT5j7iZtR5Xevtmzeq8jq0wU(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ShortcutInfo;->lambda$getFillShortcutIconConsumer$0(Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 144
    new-instance v0, Lcom/miui/home/launcher/RetainedList;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/RetainedList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/ShortcutInfo;->sRetainedList:Lcom/miui/home/launcher/RetainedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 105
    new-instance v1, Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/CheckableDelegate;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    const/4 v1, -0x1

    .line 106
    iput v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    const-string/jumbo v1, "static_icon"

    .line 140
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    .line 141
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsScreenIdChangeByResize:Z

    const/4 v0, 0x1

    .line 150
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    .line 151
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 152
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/BaseAppInfo;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShowDefaultIcon:Z

    .line 105
    new-instance v1, Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/CheckableDelegate;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    const/4 v1, -0x1

    .line 106
    iput v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    const-string/jumbo v1, "static_icon"

    .line 140
    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    .line 141
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsScreenIdChangeByResize:Z

    .line 156
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 157
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 158
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 159
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 160
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 161
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 162
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 163
    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    .line 164
    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    .line 165
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 166
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    .line 167
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    .line 168
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 169
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 170
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    .line 171
    iget-boolean v0, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mHideApplicationMessage:Z

    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mHideApplicationMessage:Z

    .line 172
    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    .line 173
    iget-boolean v0, p1, Lcom/miui/home/launcher/ItemInfo;->mIsRetained:Z

    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemInfo;->mIsRetained:Z

    .line 174
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getMessageText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getMessageBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getMessageTile()[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    .line 177
    iget v0, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    iput v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    .line 178
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    .line 179
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mSystemApplicationConfig:Lcom/miui/home/launcher/SystemAppStubConfig;

    .line 180
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    return-void
.end method

.method private canRegisterOrUnregisterToggleListener(Lcom/miui/home/launcher/IShortcutIcon;)Z
    .locals 1

    .line 675
    iget p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getResParseTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 332
    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p0

    .line 334
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isBitmapIconType(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private isDrawableMatchedWithCurrentInfo(Lcom/miui/home/launcher/IShortcutIcon;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 960
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private jumpCheckedStateChangeAnimIfNeed(Lcom/miui/home/icon/CheckedStateChangeReason;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 763
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

    if-nez v0, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/icon/CheckedStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "event_drag"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInFolder()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 768
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

    invoke-interface {p0}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$getFillShortcutIconConsumer$0(Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_7

    .line 934
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->isDrawableMatchedWithCurrentInfo(Lcom/miui/home/launcher/IShortcutIcon;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    invoke-interface {p1}, Lcom/miui/home/launcher/IShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    .line 936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "drawable error ! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.ShortcutInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 939
    :cond_1
    invoke-static {p3}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_3

    .line 941
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isDisableWorkModeApp()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb2

    goto :goto_1

    :cond_2
    const/16 v0, 0xff

    :goto_1
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 943
    :cond_3
    instance-of v0, p1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v0, :cond_4

    .line 944
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 945
    :cond_4
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_5

    .line 946
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 948
    :cond_5
    :goto_2
    iget p3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_6

    .line 949
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p0

    .line 950
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/IShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 952
    :cond_6
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/IShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private tryRegisterToggleListener(Lcom/miui/home/launcher/IShortcutIcon;)V
    .locals 1

    .line 668
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->canRegisterOrUnregisterToggleListener(Lcom/miui/home/launcher/IShortcutIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    check-cast p1, Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;

    invoke-static {v0, p1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->addToggleListener(Landroid/content/Context;Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;)V

    .line 670
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "register toggleListener, label="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.ShortcutInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private tryUnregisterToggleListener()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->canRegisterOrUnregisterToggleListener(Lcom/miui/home/launcher/IShortcutIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

    check-cast v0, Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;

    invoke-static {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->removeToggleListener(Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister toggleListener, label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.ShortcutInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private tryUpdateFolderIndicator(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallNotification()V

    :cond_0
    return-void
.end method

.method private updateLabelInDatabases(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4

    .line 350
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p2, v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateLabelInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 1066
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->areContentsTheSame(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canAcceptByHotSeats()Z
    .locals 2

    .line 435
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz p0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 4

    .line 286
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FK_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.trustonic.telecoms.standard.dlc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 289
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemInfo;->mIsRetained:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/miui/home/launcher/ShortcutInfo;->sRetainedList:Lcom/miui/home/launcher/RetainedList;

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/RetainedList;->contain(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 293
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 294
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->checkCanBeDeleted(Landroid/content/Context;)V

    .line 296
    :cond_2
    iget p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public canBeDrop()Z
    .locals 3

    .line 274
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemInfo;->mIsRetained:Z

    if-nez v0, :cond_2

    .line 275
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->canBeDrop()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canShowBoomAnim(Lcom/miui/home/launcher/Launcher;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1117
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1120
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1123
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1125
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInFolder()Z

    move-result p0

    return p0

    .line 1127
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInFolder()Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 1130
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    iget-wide v3, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, p1, v3, v4}, Lcom/miui/home/launcher/Workspace;->isInCurrentScreenId(Lcom/miui/home/launcher/Launcher;J)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v2

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method protected checkBuddyIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon(Lcom/miui/home/icon/CheckedStateChangeReason;)V

    return-void
.end method

.method protected checkBuddyIcon(Lcom/miui/home/icon/CheckedStateChangeReason;)V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/IShortcutIcon;->checkCheckBox(Z)V

    .line 759
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->jumpCheckedStateChangeAnimIfNeed(Lcom/miui/home/icon/CheckedStateChangeReason;)V

    return-void
.end method

.method public checkCanBeDeleted(Landroid/content/Context;)V
    .locals 3

    .line 267
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isProtectedDataAppAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/miui/launcher/utils/LauncherUtils;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 268
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    xor-int/lit8 p1, v2, 0x1

    .line 269
    iput p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mAppType:I

    return-void
.end method

.method public clearSavedCheckedStatus()V
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CheckableDelegate;->clearSavedCheckedStatus()V

    return-void
.end method

.method public finishPending()V
    .locals 0

    .line 826
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 827
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->clearSavedCheckedStatus()V

    return-void
.end method

.method public getAnnounceForDelete()Ljava/lang/String;
    .locals 1

    .line 886
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 887
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getAppStyle()Ljava/lang/String;
    .locals 0

    .line 1093
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "\u5206\u5c4f\u7ec4\u5408"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "\u72ec\u7acbapp"

    :goto_0
    return-object p0
.end method

.method public getBuddyForParent()Landroid/view/ViewGroup;
    .locals 0

    .line 701
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getBuddyIcon()Lcom/miui/home/launcher/IShortcutIcon;
    .locals 0

    .line 728
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

    return-object p0
.end method

.method public getBuddyIconView()Landroid/view/View;
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    return-object p0
.end method

.method public getBuddyIconView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 706
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 527
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 528
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 467
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/miui/home/launcher/common/IconDisabledFilter;->getInstance()Lcom/miui/home/launcher/common/IconDisabledFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/IconDisabledFilter;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SystemAppStubConfig;->isMiuiAppStub()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 471
    invoke-static {}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->getProgressFilter()Landroid/graphics/LightingColorFilter;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1018
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExtraPairPackageName()Ljava/lang/String;
    .locals 1

    .line 513
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string v0, "app_pair_package_name"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getExtraPairUserId()I
    .locals 2

    .line 518
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    const-string v1, "app_pair_user_id"

    .line 519
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string p0, "Launcher.ShortcutInfo"

    const-string v1, "Failed to get extra pair userId : mIntent is null"

    .line 521
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
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

    .line 932
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/ShortcutInfo$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/IShortcutIcon;Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method

.method public getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/IconCache;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 447
    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 449
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/ShortcutInfo$1;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/miui/home/launcher/ShortcutInfo$2;

    invoke-direct {p1, p0, p4}, Lcom/miui/home/launcher/ShortcutInfo$2;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    invoke-static {v0, p1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIconDrawable src: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 480
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIconDrawable toggle drawable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 486
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 p3, 0xf

    if-ne p1, p3, :cond_1

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIconDrawable preinstall drawable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 490
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getIconDrawable app drawable: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez p1, :cond_2

    .line 493
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    .line 495
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIconDrawable finally drawable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconPackage()Ljava/lang/String;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 0

    .line 1053
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 1028
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getMessageBg()Ljava/lang/String;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageTile()[B
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 507
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPairCompletePackageName()Ljava/lang/String;
    .locals 2

    .line 1085
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1086
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;
    .locals 0

    .line 1033
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mSystemApplicationConfig:Lcom/miui/home/launcher/SystemAppStubConfig;

    return-object p0
.end method

.method public getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;
    .locals 0

    .line 1038
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    .line 322
    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0

    .line 327
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getResParseTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitleStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 339
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getToggleIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 623
    instance-of p0, p1, Lcom/miui/home/launcher/ToggleDrawable;

    if-eqz p0, :cond_0

    .line 624
    move-object p0, p1

    check-cast p0, Lcom/miui/home/launcher/ToggleDrawable;

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/ToggleDrawable;->refreshForeground(Landroid/content/Context;I)V

    return-object p1

    .line 627
    :cond_0
    invoke-static {p2, p3}, Lcom/miui/home/launcher/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getToggleId()I
    .locals 2

    .line 631
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "ToggleId"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTrackMessage()Ljava/lang/String;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    return-object p0
.end method

.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 4

    .line 838
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isAllAppsSheetShow()Z

    move-result v0

    const-string v1, "Launcher.ShortcutInfo"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->inMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->isCanChecked(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->invertChecked()V

    .line 840
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const-string p0, "handleClick: shortcutIcon, return"

    .line 841
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 844
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isAllAppsSheetShow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "handleClick: inEditing, return"

    .line 845
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 848
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isForbidLaunchSplit()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "handleClick: forbid launch split"

    .line 849
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 852
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 853
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 854
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p0

    const-string v0, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "handleClick: sendBroadcast"

    .line 857
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 858
    :cond_3
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/16 v3, 0x12

    if-eq v0, v3, :cond_5

    .line 859
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    .line 860
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getSystemApplicationConfig()Lcom/miui/home/launcher/SystemAppStubConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SystemAppStubConfig;->isMiuiAppStub()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 861
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isSystemSdkEnabled()Z

    move-result p2

    if-nez p2, :cond_6

    const p0, 0x7f1004d4

    .line 862
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    .line 866
    :cond_6
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "miui.autoinstall.config.ACTION_SINGLE_RESTORE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.core"

    .line 867
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_package_name"

    .line 868
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 871
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 874
    :cond_7
    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/Launcher;->launch(Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/View;)V

    .line 875
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->makeShortcutNotHybrid(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 876
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch(Lcom/miui/home/launcher/Launcher;)V

    :goto_1
    return v2
.end method

.method public invertChecked()V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->invertChecked()V

    .line 787
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public isCanChecked(Landroid/view/View;)Z
    .locals 0

    .line 809
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/miui/home/launcher/IShortcutIcon;

    if-nez p0, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-interface {p1}, Lcom/miui/home/launcher/IShortcutIcon;->isCanChecked()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CheckableDelegate;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isContactShortcut()Z
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDeepShortcut()Z
    .locals 1

    .line 500
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisableWorkModeApp()Z
    .locals 0

    .line 965
    iget p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmptyMessage()Z
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHybridApp()Z
    .locals 4

    .line 279
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/16 v3, 0xe

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/hybrid/HybridController;->isHybridApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isIconFullyVisible(Landroid/graphics/Rect;)Z
    .locals 3

    .line 712
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 714
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    iget p0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-le p0, v2, :cond_0

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isIdAlreadyUpdated(J)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedNewInstalledAnim()Z
    .locals 1

    .line 1048
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNewInstalled()Z
    .locals 1

    .line 1043
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPairIcon()Z
    .locals 1

    .line 312
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string v0, "app_pair_package_name"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenIdChangeByResize()Z
    .locals 0

    .line 1110
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsScreenIdChangeByResize:Z

    return p0
.end method

.method public isShortcut()Z
    .locals 2

    .line 308
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x1

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .line 185
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 p1, 0x1

    .line 188
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 190
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "profile"

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x5

    .line 197
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    .line 198
    iget-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 199
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected loadTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public loadToggleInfo(Landroid/content/Context;)V
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result v0

    invoke-static {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getName(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public makeUniqueKey(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mUniqueKey:Lcom/miui/home/launcher/interfaces/IUniqueKey;

    if-nez v0, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/fold/PairShortcutUniqueKey;

    invoke-direct {v0}, Lcom/miui/home/launcher/fold/PairShortcutUniqueKey;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/fold/ShortcutUniqueKey;

    invoke-direct {v0}, Lcom/miui/home/launcher/fold/ShortcutUniqueKey;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mUniqueKey:Lcom/miui/home/launcher/interfaces/IUniqueKey;

    .line 640
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mUniqueKey:Lcom/miui/home/launcher/interfaces/IUniqueKey;

    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/interfaces/IUniqueKey;->makeUniqueKey(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeUniquelyShortcutKey()Ljava/lang/String;
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->makeUniqueKey(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 3

    .line 568
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAddToDatabase, this="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.ShortcutInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const-string/jumbo v2, "title"

    .line 573
    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    const-string v2, "label"

    .line 576
    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string p1, "intent"

    .line 579
    invoke-virtual {p2, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "iconType"

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result p1

    const-string v1, "iconPackage"

    if-eqz p1, :cond_4

    .line 584
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 585
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 587
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_4
    :goto_2
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->isBitmapIconType(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 591
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/ItemInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 592
    :cond_5
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-nez p1, :cond_7

    .line 593
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    const-string v2, "iconResource"

    if-eqz p1, :cond_6

    .line 594
    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    .line 595
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, ""

    .line 600
    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_7
    :goto_3
    iget p1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez p1, :cond_9

    .line 606
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 607
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string p0, "Application shortcut\'s intent or component is null"

    .line 609
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-void
.end method

.method public onIconChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 1010
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1012
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1013
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    :cond_1
    return-void
.end method

.method public onLaunch(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 367
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 369
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    .line 370
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 371
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 373
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    .line 376
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->tryUpdateFolderIndicator(Lcom/miui/home/launcher/Launcher;)V

    .line 377
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 378
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    invoke-static {p0, v2, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShortcutActiveEvent(Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V

    .line 380
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    invoke-static {p0, v2, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShortcutClickEvent(Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V

    return-void
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 831
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->makeShortcutNotHybrid(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 832
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->tryUnregisterToggleListener()V

    .line 834
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->notifyRemoveFromLauncher(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public printIdentity()Ljava/lang/String;
    .locals 2

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public recycleIconRes()V
    .locals 0

    return-void
.end method

.method public resetCheckBox()V
    .locals 1

    .line 773
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->resetCheckBox()V

    :cond_0
    return-void
.end method

.method public resizeSize(Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;)V
    .locals 2

    .line 1097
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getCellX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1098
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getCellY()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1099
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getSpanX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 1100
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getSpanY()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 1101
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1102
    invoke-virtual {p1}, Lcom/miui/home/launcher/bigicon/BigIconPositionInfo;->getIconType()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    return-void
.end method

.method public restoreCheckedStatus()V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->restoreCheckedStatus()V

    .line 799
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public saveCheckedStatus()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CheckableDelegate;->saveCheckedStatus()V

    .line 793
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public final setActivity(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V
    .locals 2

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 558
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 560
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 561
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string p2, "profile"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 562
    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    .line 563
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->updateUser(Landroid/content/Intent;)V

    return-void
.end method

.method public setApplicationConfig(Landroid/content/ComponentName;)V
    .locals 5

    const-string v0, "Launcher.ShortcutInfo"

    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0xc0080

    .line 227
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 225
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    new-instance v2, Lcom/miui/home/launcher/SystemAppStubConfig;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/SystemAppStubConfig;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mSystemApplicationConfig:Lcom/miui/home/launcher/SystemAppStubConfig;

    .line 230
    new-instance v2, Lcom/miui/home/launcher/ThirdApplicationConfig;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mThirdApplicationConfig:Lcom/miui/home/launcher/ThirdApplicationConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setApplicationConfig exception --> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "componentName or packageName is null"

    .line 221
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V
    .locals 2

    .line 679
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz p1, :cond_1

    .line 681
    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object v0

    .line 682
    instance-of v1, v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v1, :cond_0

    .line 683
    check-cast v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    goto :goto_0

    .line 684
    :cond_0
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_2

    .line 685
    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    .line 689
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    .line 691
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;->tryUnregisterToggleListener()V

    .line 692
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->tryRegisterToggleListener(Lcom/miui/home/launcher/IShortcutIcon;)V

    .line 693
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyForParent:Landroid/view/ViewGroup;

    .line 694
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    const-string p2, "com.miui.backup:drawable/in_progress"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 695
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 697
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon()V

    return-void
.end method

.method public setHideApplicationMessage(Z)V
    .locals 0

    .line 818
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setHideApplicationMessage(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 820
    invoke-virtual {p0, p1, p1, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public setIconPackage(Ljava/lang/String;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 740
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(ZLcom/miui/home/icon/CheckedStateChangeReason;)V

    return-void
.end method

.method public setIsChecked(ZLcom/miui/home/icon/CheckedStateChangeReason;)V
    .locals 1

    .line 744
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mCheckableDelegate:Lcom/miui/home/launcher/common/CheckableDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/CheckableDelegate;->setIsChecked(Z)V

    .line 746
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->checkBuddyIcon(Lcom/miui/home/icon/CheckedStateChangeReason;)V

    :cond_0
    return-void
.end method

.method public setLabelAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->updateLabelInDatabases(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    .line 400
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    .line 401
    iput-object p3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    .line 402
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    const-string p1, "com.miui.backup:drawable/in_progress"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mMessageText:Ljava/lang/String;

    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTextBg:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTile:[B

    invoke-virtual {p1, p2, p3, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public setScreenId(J)V
    .locals 0

    .line 1071
    iput-wide p1, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    return-void
.end method

.method public setScreenIdChangeByResize(Z)V
    .locals 0

    .line 1106
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIsScreenIdChangeByResize:Z

    return-void
.end method

.method public setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 359
    invoke-static {p2, v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateTitleInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    .line 362
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getResParseTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setLabelAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public setTrackMessage(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mTrackMessage:Ljava/lang/String;

    return-void
.end method

.method public setUser(Landroid/os/UserHandle;)V
    .locals 1

    .line 303
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->setUser(Landroid/os/UserHandle;)V

    .line 304
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string v0, "profile"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public showItemTitle()V
    .locals 0

    .line 779
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIcon:Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz p0, :cond_0

    .line 780
    invoke-interface {p0}, Lcom/miui/home/launcher/IShortcutIcon;->showTitle()V

    :cond_0
    return-void
.end method

.method public toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;
    .locals 2

    .line 1061
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public unbind()V
    .locals 0

    .line 657
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    return-void
.end method

.method public updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 918
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    .line 920
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    .line 921
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v0, :cond_1

    .line 924
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    .line 925
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->updateTitleTip()V

    .line 926
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBaseProgressShortcutIconView:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 928
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->tryUpdateFolderIndicator(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public updateIcon(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 1022
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mShortcutIconView:Lcom/miui/home/launcher/ShortcutIcon;

    .line 1023
    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v2

    .line 1022
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method updateInstallSourceInfo(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 1

    .line 238
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 241
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getOriginatingPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getOriginatingPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mInstallerPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public updateNormalShortcut(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "miui.intent.extra.SHOW_MESSAGE"

    .line 891
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 892
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setHideApplicationMessage(Z)V

    :cond_0
    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 897
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 898
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const-string v1, "android.intent.extra.shortcut.ICON"

    .line 901
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 902
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 903
    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 904
    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string v3, "com.miui.home.shortcut.extra.INTENT_NEW"

    .line 909
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 910
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/content/Intent;

    .line 911
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNormalShortcut: newIntent="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "Launcher.ShortcutInfo"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_3
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/miui/home/launcher/ShortcutInfo;->updateShortcutInfo(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-void
.end method

.method public updateScreenIdIfHasDifferent(Lcom/miui/home/launcher/ShortcutInfo;J)V
    .locals 2

    .line 1075
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->isIdAlreadyUpdated(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/ShortcutInfo;->isIdAlreadyUpdated(J)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    cmp-long p0, v0, p2

    if-eqz p0, :cond_0

    .line 1076
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setScreenId(J)V

    :cond_0
    return-void
.end method

.method protected updateShortcutInfo(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 972
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 976
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    move p4, v0

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 985
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 986
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 987
    iget p4, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-direct {p0, p4}, Lcom/miui/home/launcher/ShortcutInfo;->isBitmapIconType(I)Z

    move-result p4

    if-nez p4, :cond_3

    .line 988
    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    goto :goto_1

    :cond_2
    move v0, p4

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 993
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_4
    if-eqz p2, :cond_6

    .line 997
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result p2

    if-nez p2, :cond_5

    .line 998
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 1000
    :cond_5
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 1005
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    :cond_7
    return-void
.end method

.method public wrapIconWithBorder(Landroid/content/Context;)V
    .locals 1

    .line 541
    iget-object p1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    .line 543
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.provider.action.QUICK_CONTACT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 544
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
