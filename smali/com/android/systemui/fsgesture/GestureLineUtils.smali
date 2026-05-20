.class public Lcom/android/systemui/fsgesture/GestureLineUtils;
.super Ljava/lang/Object;
.source "GestureLineUtils.java"


# static fields
.field private static isUserSetUp:Z


# direct methods
.method public static createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
    .locals 4

    .line 42
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {v0}, Lcom/android/systemui/navigationbar/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->setDefaultColor(I)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050198

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 46
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/home/gesturedemo/R$dimen;->navigation_home_handle_width_actually:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 47
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 48
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    .line 49
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    invoke-virtual {p0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private static isHideGestureLine(Landroid/content/Context;)Z
    .locals 2

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isShowNavigationHandle(Landroid/content/Context;)Z
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUserSetUp(Landroid/content/ContentResolver;)Z
    .locals 3

    .line 55
    sget-boolean v0, Lcom/android/systemui/fsgesture/GestureLineUtils;->isUserSetUp:Z

    if-nez v0, :cond_1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserId()I

    move-result v0

    const-string/jumbo v2, "user_setup_complete"

    .line 57
    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/systemui/fsgesture/GestureLineUtils;->isUserSetUp:Z

    .line 60
    :cond_1
    sget-boolean p0, Lcom/android/systemui/fsgesture/GestureLineUtils;->isUserSetUp:Z

    return p0
.end method

.method public static updateNavigationHandleVisibility(Landroid/content/Context;Lcom/android/systemui/navigationbar/gestural/NavigationHandle;)V
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 37
    invoke-static {p0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
