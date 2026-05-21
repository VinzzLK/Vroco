.class Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;
.super Ljava/lang/Object;
.source "PreferencesLocalConfig.java"

# interfaces
.implements Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;


# instance fields
.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 21
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 28
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    return-void

    .line 19
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "configFileName: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u4e3a\u7a7a \u4e0d\u5408\u6cd5\uff01"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 140
    :cond_0
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAll()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    .line 76
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    .line 68
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    .line 52
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-wide p2

    .line 60
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-object p2

    .line 44
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-object p2

    .line 84
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
