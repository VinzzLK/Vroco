.class public abstract Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;
.super Ljava/lang/Object;
.source "ShortcutMenuItem.java"


# static fields
.field private static final trackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mLongTitle:Ljava/lang/CharSequence;

.field private mShortTitle:Ljava/lang/CharSequence;

.field private mShortTitleId:I

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->trackMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitleId:I

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLongTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mLongTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public abstract getOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getShortTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTrackShortTitle()Ljava/lang/String;
    .locals 2

    .line 61
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->trackMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitleId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public isEquals(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    .line 104
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    .line 105
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLongTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mLongTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setShortTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setShortTitleId(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitleId:I

    return-void
.end method

.method public setUserHandle(Landroid/os/UserHandle;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method
