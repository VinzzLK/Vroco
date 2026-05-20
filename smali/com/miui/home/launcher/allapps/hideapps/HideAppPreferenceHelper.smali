.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "HideAppPreferenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper$Holder;
    }
.end annotation


# instance fields
.field public mDefaultPrefChangeListenerManager:Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->mDefaultPrefChangeListenerManager:Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;

    .line 16
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->registerOnSharedPreferenceChangeListener()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;
    .locals 1

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper$Holder;->access$000()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->mDefaultPrefChangeListenerManager:Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->callOnSharedPreferenceChangeListener(Ljava/lang/String;)V

    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Ljava/lang/String;Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->mDefaultPrefChangeListenerManager:Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->registerOnSharedPreferenceChangeListener(Ljava/lang/String;Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V

    return-void
.end method

.method public unRegisterOnSharedPreferenceChangeListener(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->mDefaultPrefChangeListenerManager:Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->unRegisterOnSharedPreferenceChangeListener(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V

    return-void
.end method
