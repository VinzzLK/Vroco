.class public Lcom/miui/home/launcher/util/WorkProfileHelper;
.super Ljava/lang/Object;
.source "WorkProfileHelper.java"


# static fields
.field private static mGuidePopupWindowRef:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/popupwidget/widget/GuidePopupWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static sHadShowTip:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsHaveWorkUser:Z = false


# direct methods
.method public static synthetic $r8$lambda$3OMY-pNT0kWekxdIYIsghtn6TwU(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/WorkProfileHelper;->lambda$showMoreThanAndroidR$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 135
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->hasWorkUser()Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sIsHaveWorkUser:Z

    .line 136
    sget-object p0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    const/4 v0, 0x0

    const-string v1, "had_show_work_profile_drawer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object p0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    const-string v1, "had_show_work_profile_folder"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object p0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    const-string v1, "had_show_work_profile_person"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static isFirstLoadWorkProfile(Ljava/lang/String;)Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sIsHaveWorkUser:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPreferWorkProfile()Z
    .locals 1

    const-string v0, "had_show_work_profile_drawer"

    .line 131
    invoke-static {v0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->isFirstLoadWorkProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isShowTip(Ljava/lang/String;)Z
    .locals 2

    .line 118
    invoke-static {p0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->isFirstLoadWorkProfile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return v1
.end method

.method private static synthetic lambda$showMoreThanAndroidR$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static showDialog(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 1

    .line 63
    instance-of v0, p0, Landroidx/activity/ComponentActivity;

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Landroidx/activity/ComponentActivity;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->showWithTracking(Landroidx/activity/ComponentActivity;Lmiuix/appcompat/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private static showMoreThanAndroidR(Landroid/content/Context;)V
    .locals 3

    .line 51
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    iget-object v2, v1, Lcom/miui/home/launcher/allapps/StringCache;->workProfileEduTitle:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/miui/home/launcher/allapps/StringCache;->workProfileEdu:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, v1, Lcom/miui/home/launcher/allapps/StringCache;->workProfileEduAccept:Ljava/lang/String;

    sget-object v2, Lcom/miui/home/launcher/util/WorkProfileHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/util/WorkProfileHelper$$ExternalSyntheticLambda0;

    .line 54
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 59
    invoke-static {p0, v0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->showDialog(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public static showOrHideWorkProfileTipsOnDesktop(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->mGuidePopupWindowRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/popupwidget/widget/GuidePopupWindow;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 104
    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->mGuidePopupWindowRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 106
    :cond_2
    invoke-static {p2}, Lcom/miui/home/launcher/util/WorkProfileHelper;->isShowTip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "had_show_work_profile_folder"

    .line 109
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/StringCache;->workProfileEdu:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const p2, 0x7f100551

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 110
    :goto_1
    new-instance v0, Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x8

    .line 111
    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    .line 112
    invoke-virtual {v0, p2}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 113
    invoke-virtual {v0, p1, p0, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;II)V

    .line 114
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/miui/home/launcher/util/WorkProfileHelper;->mGuidePopupWindowRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static showWorkProfileTipsOnDrawer(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscRightBottom()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "had_show_work_profile_drawer"

    .line 38
    invoke-static {p1}, Lcom/miui/home/launcher/util/WorkProfileHelper;->isShowTip(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->showMoreThanAndroidR(Landroid/content/Context;)V

    return-void
.end method
