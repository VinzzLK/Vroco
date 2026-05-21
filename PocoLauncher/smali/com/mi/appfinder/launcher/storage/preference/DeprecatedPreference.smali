.class public Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;
.super Ljava/lang/Object;
.source "DeprecatedPreference.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BRANCH_SWITCH_ON:Ljava/lang/String; = "branch_switch_on"

.field public static final FOCUS_SEARCH_ON_ENTER_DRAWER:Ljava/lang/String; = "focus_search_on_enter_drawer"

.field private static final PREF_NAME:Ljava/lang/String; = "commercial_pref"

.field private static volatile mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;
    .locals 4

    .line 16
    sget-object v0, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;

    const-string v2, "commercial_pref"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    return-object v0
.end method
