.class public Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;
.super Ljava/lang/Object;
.source "LauncherFsGestureCompat.java"


# static fields
.field private static final ANIM_COMPAT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURITY_CENTER_APP_DETAIL:Landroid/content/ComponentName;

.field public static final SECURITY_CENTER_APP_LOCK:Landroid/content/ComponentName;

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.appmanager.ApplicationsDetailsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->SECURITY_CENTER_APP_DETAIL:Landroid/content/ComponentName;

    .line 17
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.applicationlock.ConfirmAccessControl"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->SECURITY_CENTER_APP_LOCK:Landroid/content/ComponentName;

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v3, "LauncherFsGestureCompat"

    .line 20
    sput-object v3, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->TAG:Ljava/lang/String;

    const-string v3, "com.android.incallui/.InCallActivity"

    const-string v4, "com.android.contacts/.activities.TwelveKeyDialer"

    .line 23
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.miui.securitycenter/com.miui.antispam.ui.activity.MainActivity"

    const-string v2, "com.android.mms/com.android.mms.ui.MmsTabActivity"

    .line 26
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.miui.securitycore/com.miui.xspace.ui.activity.XSpaceSettingActivity"

    const-string v2, "com.android.settings/.MainSettings"

    .line 27
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.android.updater/.MainActivity"

    .line 28
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.miui.securitycenter/com.miui.permcenter.permissions.SystemAppPermissionDialogActivity"

    .line 29
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.android.googlequicksearchbox/com.google.android.apps.gsa.monet.MonetActivity"

    .line 30
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.miui.securityadd/com.miui.gamebooster.GameBoosterRichWebActivity"

    .line 31
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.miui.securitycenter/com.miui.powercenter.legacypowerrank.PowerDetailActivity"

    .line 32
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.celltick.lockscreen/.start6.MainActivity"

    .line 33
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.celltick.lockscreen/.SplashDismissKeyguardActivity"

    .line 34
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getComponentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 38
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getComponentName, map component from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", to="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :cond_0
    return-object p0
.end method
