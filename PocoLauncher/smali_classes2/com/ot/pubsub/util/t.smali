.class public Lcom/ot/pubsub/util/t;
.super Ljava/lang/Object;


# static fields
.field private static c:Landroid/content/SharedPreferences;

.field private static d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;J)J
    .locals 1

    .line 57
    invoke-static {}, Lcom/ot/pubsub/util/t;->m()V

    .line 58
    sget-object v0, Lcom/ot/pubsub/util/t;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "custom_id"

    const-string v0, ""

    .line 155
    invoke-static {p0, v0}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/ot/pubsub/util/t;->m()V

    .line 48
    sget-object v0, Lcom/ot/pubsub/util/t;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)V
    .locals 1

    const-string v0, "pref_instance_id_last_use_time"

    .line 91
    invoke-static {v0, p0, p1}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "loc_token"

    .line 96
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 2

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_custom_privacy_policy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ot/pubsub/util/t;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string v0, "loc_token"

    const-string v1, ""

    .line 100
    invoke-static {v0, v1}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(J)V
    .locals 1

    const-string v0, "last_secret_key_time"

    .line 120
    invoke-static {v0, p0, p1}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "loc_config"

    .line 104
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;J)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/ot/pubsub/util/t;->m()V

    .line 63
    sget-object v0, Lcom/ot/pubsub/util/t;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-static {}, Lcom/ot/pubsub/util/t;->m()V

    .line 53
    sget-object v0, Lcom/ot/pubsub/util/t;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b(Ljava/lang/String;Z)Z
    .locals 1

    .line 67
    invoke-static {}, Lcom/ot/pubsub/util/t;->m()V

    .line 68
    sget-object v0, Lcom/ot/pubsub/util/t;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    const-string v0, "loc_config"

    const-string v1, ""

    .line 108
    invoke-static {v0, v1}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(J)V
    .locals 1

    const-string v0, "first_launch_time"

    .line 163
    invoke-static {v0, p0, p1}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pub_sub_secret_key_data"

    .line 112
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Z)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/ot/pubsub/util/t;->m()V

    .line 73
    sget-object v0, Lcom/ot/pubsub/util/t;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    const-string v0, "pub_sub_secret_key_data"

    const-string v1, ""

    .line 116
    invoke-static {v0, v1}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(J)V
    .locals 1

    const-string v0, "next_update_common_conf_time"

    .line 175
    invoke-static {v0, p0, p1}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_custom_privacy_policy_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_instance_id"

    .line 146
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/ot/pubsub/util/v;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ot/pubsub/util/t;->a(J)V

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_instance_id"

    const-string v1, ""

    .line 142
    invoke-static {v0, v1}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "common_cloud_data"

    .line 167
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g()J
    .locals 3

    const-string v0, "first_launch_time"

    const-wide/16 v1, 0x0

    .line 159
    invoke-static {v0, v1, v2}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "region_rul"

    .line 183
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    const-string v0, "common_cloud_data"

    const-string v1, ""

    .line 171
    invoke-static {v0, v1}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "common_config_hash"

    .line 191
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i()J
    .locals 3

    const-string v0, "next_update_common_conf_time"

    const-wide/16 v1, 0x0

    .line 179
    invoke-static {v0, v1, v2}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "app_config_region"

    .line 199
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    const-string v0, "app_config_region"

    const-string v1, ""

    .line 203
    invoke-static {v0, v1}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m()V
    .locals 4

    .line 34
    sget-object v0, Lcom/ot/pubsub/util/t;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    const-class v0, Lcom/ot/pubsub/util/t;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/ot/pubsub/util/t;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_1

    .line 39
    invoke-static {}, Lcom/ot/pubsub/util/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "one_track_pub_sub"

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/ot/pubsub/util/t;->c:Landroid/content/SharedPreferences;

    .line 41
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/ot/pubsub/util/t;->d:Landroid/content/SharedPreferences$Editor;

    .line 43
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
