.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;
.super Ljava/lang/Object;
.source "HideAppsLockUtils.java"


# static fields
.field private static sFodLoc:Landroid/graphics/Rect;

.field private static sIsFodDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static changeHideAppsSwitch(Z)V
    .locals 2

    .line 446
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hide_apps_switch"

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private static clearHideApps()V
    .locals 3

    .line 490
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hide_apps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putStringSetForce(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static clearHideAppsData()V
    .locals 3

    .line 530
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->clearHideApps()V

    const/4 v0, 0x0

    .line 531
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->saveHideAppsUnlockPassWord(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 532
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setWrongFingerAttempts(I)V

    const-wide/16 v1, 0x0

    .line 533
    invoke-static {v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setLockoutAttepmpDeadline(J)V

    .line 534
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setCurrentUnlockMode(I)V

    .line 535
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    .line 536
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setNoMoreShowGuideView()V

    .line 537
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->changeHideAppsSwitch(Z)V

    return-void
.end method

.method public static filterShowingProgressApps(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 556
    iget v2, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez v2, :cond_0

    .line 557
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/library/compat/UserManagerCompat;->isWorkUser(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static findHideApps(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 522
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getFodLoc()Landroid/graphics/Rect;
    .locals 1

    .line 143
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->sFodLoc:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getHideApps()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "hide_apps"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getHideAppsUnlockPassWord()Ljava/lang/String;
    .locals 3

    .line 433
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hide_apps_lock_password"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleGuideViewBackPressed()V
    .locals 3

    .line 307
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hide_apps_need_to_show_guide_in_drawer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 309
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setNoMoreShowGuideView()V

    :cond_0
    return-void
.end method

.method private static hasCommonPasswordInMiui(Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "android.provider.MiuiSettings$Secure"

    .line 590
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 591
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "hasCommonPassword"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 592
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static hasHideAppsUnlockPassWord()Z
    .locals 1

    .line 429
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->getHideAppsUnlockPassWord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static initHideAppsSwitchState()V
    .locals 3

    .line 450
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hide_apps_switch"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hideapps_lock_use_fingerprint_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 452
    invoke-static {v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->changeHideAppsSwitch(Z)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-static {v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->changeHideAppsSwitch(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isFingerprintEnable()Z
    .locals 3

    .line 385
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hideapps_lock_use_fingerprint_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isFirstEnterHiddenInOldMachine()Z
    .locals 3

    .line 545
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "first_enter_hidden_in_old_machine"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFodDevice()Z
    .locals 1

    .line 134
    sget-boolean v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->sIsFodDevice:Z

    return v0
.end method

.method public static isHideAppsOpen()Z
    .locals 3

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->initHideAppsSwitchState()V

    .line 442
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hide_apps_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isInHideApps(Lcom/miui/home/launcher/util/ComponentKey;)Z
    .locals 1

    .line 484
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->getHideApps()Ljava/util/Set;

    move-result-object v0

    .line 485
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object p0

    .line 486
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isScreenLockOpen(Landroid/content/Context;)Z
    .locals 2

    .line 581
    :try_start_0
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasCommonPasswordInMiui(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "HideAppsLockUtils"

    const-string v1, "isScreenLockOpen error"

    .line 583
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static registerFingerprintEnableListener(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V
    .locals 2

    .line 389
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hideapps_lock_use_fingerprint_state"

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->registerOnSharedPreferenceChangeListener(Ljava/lang/String;Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static saveHideAppsUnlockPassWord(Ljava/lang/String;)V
    .locals 2

    .line 437
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hide_apps_lock_password"

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 566
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 568
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "android.intent.extra.EMAIL"

    .line 569
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    .line 570
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.TEXT"

    .line 571
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 572
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p0, 0x8000

    .line 573
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 574
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 575
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static setCurrentUnlockMode(I)V
    .locals 2

    .line 358
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hideappslock_unlock_mode"

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putIntForce(Ljava/lang/String;I)V

    return-void
.end method

.method public static setFingerComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 370
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public static setFingerprintEnable(Z)V
    .locals 2

    .line 378
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    const-string v1, "hideapps_lock_use_fingerprint_state"

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putIntForce(Ljava/lang/String;I)V

    return-void
.end method

.method public static setFirstEnterHiddenInOldMachine(Z)V
    .locals 2

    .line 541
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "first_enter_hidden_in_old_machine"

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private static setLockoutAttepmpDeadline(J)V
    .locals 2

    .line 342
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hideappslock_countDownTimer_deadline"

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putLongForce(Ljava/lang/String;J)V

    return-void
.end method

.method public static setNoMoreShowGuideView()V
    .locals 3

    .line 322
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "hide_apps_need_to_show_guide_in_drawer"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putIntForce(Ljava/lang/String;I)V

    return-void
.end method

.method public static setToHideApps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 461
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/util/ComponentKey;

    .line 462
    invoke-virtual {v1}, Lcom/miui/home/launcher/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object p0

    const-string v1, "hide_apps"

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putStringSetForce(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static setVibrator(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "vibrator"

    .line 362
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    .line 364
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method private static setWrongFingerAttempts(I)V
    .locals 2

    .line 330
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    const-string v1, "privacy_password_finger_authentication_num"

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putIntForce(Ljava/lang/String;I)V

    return-void
.end method

.method public static shakeViolent(Landroid/view/View;)V
    .locals 9

    .line 404
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3e100000    # -30.0f

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x0

    .line 405
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v3, 0x32

    .line 406
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 407
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 409
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-direct {v5, v2, v6, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 410
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v7, 0x64

    .line 411
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 412
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 414
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v6, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v6, 0x96

    .line 415
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 416
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 417
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 419
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v3, 0x2

    .line 420
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 421
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 422
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 423
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 424
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 425
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static subtract(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 606
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static unRegisterFingerprintEnableListener(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V
    .locals 1

    .line 395
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->unRegisterOnSharedPreferenceChangeListener(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V

    return-void
.end method
