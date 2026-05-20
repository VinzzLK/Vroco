.class public Lcom/miui/home/safemode/model/SafeAppFilter;
.super Ljava/lang/Object;
.source "SafeAppFilter.java"


# static fields
.field private static final mSkippedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 12
    sget-boolean v0, Lcom/miui/home/safemode/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x5

    const-string v2, "com.android.inputmethod.latin.setup.SetupActivity"

    const-string v3, "com.google.android.inputmethod.latin"

    const-string v5, "com.opera.max.ui.v2.MainActivity"

    const-string v6, "com.opera.max.oem.xiaomi"

    const/4 v7, 0x3

    const-string v8, "com.google.android.apps.inputmethod.libs.framework.core.LauncherActivity"

    const-string v9, "com.google.android.inputmethod.pinyin"

    const/4 v10, 0x2

    const-string v11, "com.qualcomm.qti.modemtestmode.MbnFileActivate"

    const-string v12, "com.qualcomm.qti.modemtestmode"

    const/4 v13, 0x1

    const-string v14, "com.android.documentsui.LauncherActivity"

    const-string v15, "com.google.android.documentsui"

    const/16 v16, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v1, [Landroid/content/ComponentName;

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v15, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v16

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v12, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v13

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v10

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v7

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v4, 0x7

    new-array v4, v4, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v15, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v16

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v12, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v13

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v10

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v4, v7

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v4, v2

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.app.settings.GoogleSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v4, v3

    const/4 v1, 0x6

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.google.android.gms.common.settings.GoogleSettingsActivity"

    invoke-direct {v3, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    sput-object v0, Lcom/miui/home/safemode/model/SafeAppFilter;->mSkippedItems:Ljava/util/HashSet;

    return-void
.end method

.method public static shouldShowApp(Landroid/content/ComponentName;)Z
    .locals 1

    .line 29
    sget-object v0, Lcom/miui/home/safemode/model/SafeAppFilter;->mSkippedItems:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.app.AppDetailsActivity"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
