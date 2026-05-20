.class public Lcom/miui/home/launcher/common/PreferenceUtils;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "PreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/PreferenceUtils$Holder;
    }
.end annotation


# static fields
.field private static mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;


# instance fields
.field private mDesktopModeDefault:I

.field private mDrawerModeDefault:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "launcher_sharedpreference"

    .line 25
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/common/PreferenceUtils$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mDrawerModeDefault:I

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mDesktopModeDefault:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/miui/home/launcher/common/PreferenceUtils$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/common/PreferenceUtils;)Lcom/miui/home/launcher/common/PreferenceUtils;
    .locals 0

    .line 22
    sput-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    return-object p0
.end method

.method public static commitInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putIntForce(Ljava/lang/String;I)V

    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;
    .locals 1

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils$Holder;->access$300()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/BaseSharePreference;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static putFloat(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 136
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/BaseSharePreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static removeKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 180
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->remove(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAddRecommendFolderIfNeed()Z
    .locals 2

    .line 299
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    const-string v0, "key_need_add_recommend_folder"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getDrawerTransparencyType()I
    .locals 2

    const-string v0, "drawer_transparency_type"

    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIconSizeScaleFromSP(F)F
    .locals 1

    const-string v0, "icon_size_scale"

    .line 200
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getIgnoreAlignScreenList()Ljava/lang/String;
    .locals 2

    const-string v0, "ignore_align_screen_list"

    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsOnUpgradeMiui15()Z
    .locals 2

    const-string v0, "on_upgrade_miui15"

    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSearchBarData()Ljava/lang/String;
    .locals 2

    const-string v0, "key_search_bar_data_from_provider_new"

    const-string v1, ""

    .line 271
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarDataFromCloud()Ljava/lang/String;
    .locals 2

    const-string v0, "key_search_bar_data_from_cloud"

    const-string v1, ""

    .line 279
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarDataUpdateTime()J
    .locals 3

    const-string v0, "key_search_bar_data_update_time"

    const-wide/16 v1, 0x0

    .line 263
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchBarTestHash()I
    .locals 2

    const-string v0, "key_search_bar_test_hash"

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public hasSetDrawerModeEnable()Z
    .locals 1

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 212
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasSetLayoutType()Z
    .locals 1

    const-string v0, "pref_key_layout_type"

    .line 216
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCloudBackUpOrReplacement(Ljava/lang/String;)Z
    .locals 1

    .line 347
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDrawerModeEnable()Z
    .locals 3

    .line 222
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetDrawerModeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 225
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mDrawerModeDefault:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mDesktopModeDefault:I

    :goto_0
    const-string v2, "miui_home_drawer_default_enable"

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public isFirstLaunchGuideShown()Z
    .locals 2

    const-string v0, "is_first_launch_guide_shown"

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFirstShowPairIcon()Z
    .locals 2

    const-string v0, "is_first_show_pair_icon"

    const/4 v1, 0x0

    .line 319
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isRecordedCellCount()Z
    .locals 2

    .line 355
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    const-string v0, "grid_upgrade_record_cell_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isShouldShowAddPairToast()Z
    .locals 2

    const-string v0, "is_should_show_add_pair_toast"

    const/4 v1, 0x1

    .line 335
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setAddRecommendFolderIfNeed(Z)V
    .locals 1

    .line 295
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    const-string v0, "key_need_add_recommend_folder"

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAllModeIsCloudBackUpOrReplacement(Z)V
    .locals 4

    .line 359
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 360
    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getCloudBackUpOrReplacementPreKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsCloudBackUpOrReplacement(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDrawerModeEnable(Z)V
    .locals 1

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIconSizeScale(F)V
    .locals 1

    const-string v0, "icon_size_scale"

    .line 208
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setIgnoreAlignScreenList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ignore_align_screen_list"

    .line 259
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsCloudBackUpOrReplacement(Ljava/lang/String;Z)V
    .locals 0

    .line 343
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBooleanForce(Ljava/lang/String;Z)Z

    return-void
.end method

.method public setIsFirstLaunchGuideShown()V
    .locals 2

    const-string v0, "is_first_launch_guide_shown"

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBooleanForce(Ljava/lang/String;Z)Z

    return-void
.end method

.method public setIsFirstShowPairIcon()V
    .locals 2

    const-string v0, "is_first_show_pair_icon"

    const/4 v1, 0x1

    .line 323
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBooleanForce(Ljava/lang/String;Z)Z

    return-void
.end method

.method public setIsOnUpgradeMiui15(Z)V
    .locals 1

    const-string v0, "on_upgrade_miui15"

    .line 236
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsShouldShowAddPairToast()V
    .locals 2

    const-string v0, "is_should_show_add_pair_toast"

    const/4 v1, 0x0

    .line 339
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBooleanForce(Ljava/lang/String;Z)Z

    return-void
.end method

.method public setRecordedCellCount(Z)V
    .locals 1

    .line 351
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    const-string v0, "grid_upgrade_record_cell_count"

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSearchBarData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_search_bar_data_from_provider_new"

    .line 275
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSearchBarDataFromCloud(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_search_bar_data_from_cloud"

    .line 283
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSearchBarDataUpdateTime(J)V
    .locals 1

    const-string v0, "key_search_bar_data_update_time"

    .line 267
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/common/BaseSharePreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setSearchBarTestHash(I)V
    .locals 1

    const-string v0, "key_search_bar_test_hash"

    .line 291
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setShouldAlignScreen(Z)V
    .locals 1

    .line 251
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    const-string/jumbo v0, "should_align_screen"

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldAlignScreen()Z
    .locals 2

    .line 247
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    const-string/jumbo v0, "should_align_screen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
