.class public Lcom/miui/maml/data/BroadcastBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;,
        Lcom/miui/maml/data/BroadcastBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BroadcastBinder"

.field private static final RECEIVER_EXPORTED:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "BroadcastBinder"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/maml/data/BroadcastBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "BroadcastBinder"

    if-eqz p1, :cond_1

    const-string v1, "action"

    .line 131
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    .line 137
    new-instance v0, Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;-><init>(Lcom/miui/maml/data/BroadcastBinder;)V

    iput-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;

    .line 138
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void

    :cond_0
    const-string p0, "no action in broadcast binder"

    .line 133
    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no action in broadcast binder element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "ContentProviderBinder node is null"

    .line 128
    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "node is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateVariables(Landroid/content/Intent;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVariables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BroadcastBinder"

    invoke-static {v2, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 160
    check-cast v0, Lcom/miui/maml/data/BroadcastBinder$Variable;

    const-wide/16 v3, 0x0

    .line 164
    iget v5, v0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_4

    const/4 v10, 0x4

    if-eq v5, v10, :cond_3

    const/4 v10, 0x5

    if-eq v5, v10, :cond_2

    const/4 v10, 0x6

    if-eq v5, v10, :cond_1

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalide type"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_1
    iget-object v3, v0, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    goto :goto_1

    .line 175
    :cond_2
    iget-object v3, v0, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    float-to-double v3, v3

    goto :goto_1

    .line 181
    :cond_3
    iget-object v3, v0, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-double v3, v3

    goto :goto_1

    .line 178
    :cond_4
    iget-object v3, v0, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    .line 187
    :goto_1
    invoke-virtual {v0, v3, v4}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    new-array v5, v7, [Ljava/lang/Object;

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "%f"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 166
    :cond_5
    iget-object v3, v0, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 167
    iget-object v4, v0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    invoke-virtual {v0, v4}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    :goto_3
    new-array v4, v8, [Ljava/lang/Object;

    .line 194
    iget-object v5, v0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v0, v0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v3, v4, v9

    const-string v0, "name:%s type:%s value:%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method protected addVariable(Lcom/miui/maml/data/BroadcastBinder$Variable;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 0

    .line 206
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    .line 207
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->unregister()V

    return-void
.end method

.method public init()V
    .locals 0

    .line 201
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 202
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->register()V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/BroadcastBinder$Variable;
    .locals 1

    .line 143
    new-instance v0, Lcom/miui/maml/data/BroadcastBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p1, p0}, Lcom/miui/maml/data/BroadcastBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/BroadcastBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/BroadcastBinder$Variable;

    move-result-object p0

    return-object p0
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-direct {p0, p2}, Lcom/miui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    return-void
.end method

.method protected onRegister()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;

    iget-object v2, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;

    iget-object v2, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    return-void
.end method

.method protected onUnregister()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/maml/data/BroadcastBinder;->mIntentReceiver:Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected register()V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->onRegister()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    return-void
.end method

.method protected unregister()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/data/BroadcastBinder;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/miui/maml/data/BroadcastBinder;->mRegistered:Z

    return-void
.end method
