.class public final Lcom/miui/home/LauncherDecoupleHelper;
.super Ljava/lang/Object;
.source "LauncherDecoupleHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLauncherDecoupleHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherDecoupleHelper.kt\ncom/miui/home/LauncherDecoupleHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,256:1\n1860#2,3:257\n*S KotlinDebug\n*F\n+ 1 LauncherDecoupleHelper.kt\ncom/miui/home/LauncherDecoupleHelper\n*L\n208#1:257,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;


# direct methods
.method public static synthetic $r8$lambda$VtFYkw88TlB__y-08DVgjUsvlzw(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/LauncherDecoupleHelper;->filterHideApps$lambda-1(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/LauncherDecoupleHelper;

    invoke-direct {v0}, Lcom/miui/home/LauncherDecoupleHelper;-><init>()V

    sput-object v0, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final filterHideApps$lambda-1(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result p0

    return p0
.end method

.method private final migratePocoCategoryData(Landroid/content/Context;)V
    .locals 21

    .line 200
    sget-object v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper;->Companion:Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;->getInstance()Lcom/miui/home/launcher/poco/PocoCategoryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/poco/PocoCategoryHelper;->getAllCategories()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/miui/home/LauncherDecoupleHelper$migratePocoCategoryData$type$1;

    invoke-direct {v1}, Lcom/miui/home/LauncherDecoupleHelper$migratePocoCategoryData$type$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 202
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Gson().fromJson(categoryString, type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    .line 203
    new-instance v1, Lcom/miui/home/launcher/data/db/AppCategoryDbHelper;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/data/db/AppCategoryDbHelper;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-gez v6, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v7, Lcom/miui/home/launcher/allapps/category/PocoCategory;

    .line 209
    invoke-virtual {v7}, Lcom/miui/home/launcher/allapps/category/PocoCategory;->getCateId()I

    move-result v9

    const/16 v10, 0xb

    if-gt v9, v10, :cond_2

    invoke-virtual {v7}, Lcom/miui/home/launcher/allapps/category/PocoCategory;->getCateId()I

    move-result v9

    const/4 v10, -0x2

    if-ge v9, v10, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 221
    invoke-virtual {v7}, Lcom/miui/home/launcher/allapps/category/PocoCategory;->getCateId()I

    move-result v7

    sub-int/2addr v6, v3

    .line 220
    invoke-static {v9, v7, v6}, Lcom/miui/home/launcher/LauncherCategory$Category;->addDefaultAppCategory(Landroid/content/ContentResolver;II)Z

    goto :goto_3

    .line 210
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 211
    new-instance v10, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v7}, Lcom/miui/home/launcher/allapps/category/PocoCategory;->getCateId()I

    move-result v11

    invoke-virtual {v7}, Lcom/miui/home/launcher/allapps/category/PocoCategory;->getCateName()Ljava/lang/String;

    move-result-object v12

    sub-int/2addr v6, v3

    invoke-direct {v10, v11, v12, v6}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    .line 210
    invoke-static {v9, v10}, Lcom/miui/home/launcher/LauncherCategory$Category;->addCustomAppCategory(Landroid/content/ContentResolver;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)Landroid/net/Uri;

    .line 212
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-virtual {v1}, Lcom/miui/home/launcher/data/db/AppCategoryDbHelper;->getComponentKeyTable()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "category="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v7}, Lcom/miui/home/launcher/allapps/category/PocoCategory;->getCateId()I

    move-result v7

    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_3

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 216
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 215
    invoke-static {v7, v9, v10}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->addAppCategoryConfig(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    move v6, v8

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public final filterHideApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object p0, Lcom/miui/home/LauncherDecoupleHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper$$ExternalSyntheticLambda0;

    invoke-interface {p1, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final getSettingFragment()Lcom/miui/home/settings/MiuiHomeSettings;
    .locals 0

    .line 196
    new-instance p0, Lcom/miui/home/settings/PocoHomeSettings;

    invoke-direct {p0}, Lcom/miui/home/settings/PocoHomeSettings;-><init>()V

    return-object p0
.end method

.method public final handleActivityResult(I)V
    .locals 0

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_1

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->onHideAppsUnLockPasswordAndFingerprintSetSuccess()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->runOpenHideAppsRunnable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isShowSearchBar(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isShowSearchBar()Z

    move-result p0

    return p0
.end method

.method public final migrateData()V
    .locals 8

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getCEBaseContex()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getInstance().getCEBaseContex()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "migrated_poco_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "LauncherDecoupleHelper"

    const-string v4, " migratePocoData "

    .line 64
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 67
    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "getDefaultSharedPreferen\u2026ntext(base)\n            )"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "lock_screen_mode"

    .line 71
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 73
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v2

    .line 74
    :goto_0
    invoke-static {v7, v4, v5}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_2
    const-string v4, "all_apps_color_filter_switch"

    .line 80
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 82
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setColorSearchEnabled(Z)V

    :cond_3
    const-string v4, "key_color_group_anim_open"

    .line 85
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 87
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setColorAnimEnabled(Z)V

    :cond_4
    const-string v4, "is_first_launch_guide_shown"

    .line 90
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 91
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    const-string v4, "request_permission"

    .line 100
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 101
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    const-string v4, "hide_apps_switch"

    .line 110
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 112
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 113
    invoke-static {v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->changeHideAppsSwitch(Z)V

    :cond_7
    const-string v4, "hide_apps"

    .line 115
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 117
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 118
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v7

    .line 119
    invoke-virtual {v7, v4, v5}, Lcom/miui/home/launcher/common/BaseSharePreference;->putStringSetForce(Ljava/lang/String;Ljava/util/Set;)V

    :cond_8
    const-string v4, "hide_apps_lock_password"

    .line 121
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    .line 123
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-static {v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->saveHideAppsUnlockPassWord(Ljava/lang/String;)V

    :cond_9
    const-string v4, "auto_fill_empty_cells_switch"

    .line 127
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 128
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "miui_home_enable_auto_fill_empty_cells"

    .line 129
    invoke-static {v5, v7, v4}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_a
    const-string v4, "lock_screen_cells_switch"

    .line 136
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 137
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "miui_home_lock_screen_cells"

    .line 138
    invoke-static {v4, v5, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_b
    const-string v2, "pref_key_transformation_type"

    .line 145
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "1"

    .line 146
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    .line 149
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v4, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_c
    invoke-static {v0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 153
    sget v3, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    const-string v4, "com.vroco.launcher_world_readable_preferences"

    .line 152
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_default_screen"

    .line 154
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-wide/16 v4, -0x1

    .line 155
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 156
    invoke-static {v2, v3}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)Z

    .line 159
    :cond_d
    sget-object v2, Lcom/miui/home/launcher/poco/PocoCategoryHelper;->Companion:Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;

    invoke-virtual {v2}, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;->getInstance()Lcom/miui/home/launcher/poco/PocoCategoryHelper;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;->getKEY_ALL_CATEGORY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/common/BaseSharePreference;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    const-string v3, "getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/home/LauncherDecoupleHelper;->migratePocoCategoryData(Landroid/content/Context;)V

    .line 163
    :cond_e
    invoke-static {v0, v1, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_f
    :goto_1
    return-void
.end method

.method public final onAppsChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "removedPackages"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    .line 234
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasHideAppsUnlockPassWord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->getHideApps()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 238
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 239
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 240
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 242
    new-instance v4, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    iget-object v3, v4, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 247
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-eq v1, p1, :cond_0

    .line 248
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object p1

    const-string v1, "hide_apps"

    .line 249
    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putStringSetForce(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final setAppListFilter(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 0

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 172
    sget-object p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->sHideFilter:Ljava/util/function/Predicate;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setHideFilter(Ljava/util/function/Predicate;)V

    :cond_0
    return-void
.end method

.method public final setIsHideApp(Lcom/miui/home/launcher/AppInfo;Z)V
    .locals 2

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance p0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 178
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isInHideApps(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/AppInfo;->setIsHideApp(Z)V

    :cond_0
    return-void
.end method
