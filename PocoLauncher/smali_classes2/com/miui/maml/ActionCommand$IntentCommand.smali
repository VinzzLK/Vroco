.class Lcom/miui/maml/ActionCommand$IntentCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;
    }
.end annotation


# static fields
.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

.field private mDisableMotionAnim:Z

.field private mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lcom/miui/maml/util/IntentInfo;

.field private mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

.field private mIntentVar:Lcom/miui/maml/data/IndexedVariable;

.field private mJumptoMain:Z

.field private mMaxVersion:J

.field private mMinVersion:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 5

    .line 1110
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 1093
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 1111
    new-instance v1, Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/miui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    const-string v1, "broadcast"

    .line 1112
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "type"

    .line 1113
    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_3

    .line 1114
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "service"

    .line 1116
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1117
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_1

    :cond_1
    const-string v1, "activity"

    .line 1118
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1119
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_1

    :cond_2
    const-string v0, "var"

    .line 1120
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1121
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    const-string v0, "intentVar"

    .line 1122
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1124
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_1

    .line 1115
    :cond_3
    :goto_0
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    :cond_4
    :goto_1
    const-string v0, "minVersion"

    const-wide/16 v1, -0x1

    .line 1127
    invoke-static {p2, v0, v1, v2}, Lcom/miui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mMinVersion:J

    const-string v0, "maxVersion"

    .line 1128
    invoke-static {p2, v0, v1, v2}, Lcom/miui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mMaxVersion:J

    const/4 v0, -0x1

    const-string v1, "flags"

    .line 1129
    invoke-static {p2, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    const-string v0, "disableMotionAnim"

    .line 1130
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mDisableMotionAnim:Z

    const-string v0, "jumptoMain"

    .line 1131
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mJumptoMain:Z

    const-string v0, "activityOption"

    .line 1132
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/miui/maml/ActionCommand$ObjVar;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/miui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    const-string v0, "Fallback"

    .line 1136
    invoke-static {p2, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1138
    new-instance v0, Lcom/miui/maml/CommandTrigger;

    invoke-direct {v0, p2, p1}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    :cond_6
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 13

    .line 1191
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_15

    .line 1192
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1195
    :try_start_0
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    goto/16 :goto_8

    .line 1288
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v1, :cond_15

    .line 1289
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1285
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 1282
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 1197
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 1198
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1200
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 1201
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1202
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1204
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1206
    iget-boolean v6, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mJumptoMain:Z

    if-eqz v6, :cond_6

    .line 1207
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1209
    iget-object v6, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    move v5, v1

    .line 1213
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v6, 0x10000

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1214
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    if-eqz v5, :cond_10

    .line 1215
    iget-wide v4, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mMinVersion:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_7

    iget-wide v4, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mMaxVersion:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_d

    .line 1216
    :cond_7
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_d

    .line 1218
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1220
    :try_start_1
    const-class v4, Landroid/content/pm/ApplicationInfo;

    const-string v5, "longVersionCode"

    invoke-static {v4, v3, v5}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-gtz v5, :cond_8

    goto :goto_3

    .line 1224
    :cond_8
    iget-wide v8, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mMinVersion:J

    cmp-long v5, v8, v6

    if-lez v5, :cond_9

    iget-wide v10, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mMaxVersion:J

    cmp-long v5, v10, v6

    if-lez v5, :cond_9

    cmp-long v5, v3, v8

    if-ltz v5, :cond_a

    cmp-long v3, v3, v10

    if-lez v3, :cond_c

    goto :goto_2

    :cond_9
    cmp-long v5, v8, v6

    if-lez v5, :cond_b

    cmp-long v3, v3, v8

    if-gez v3, :cond_c

    :cond_a
    :goto_2
    move v3, v1

    goto :goto_4

    .line 1234
    :cond_b
    iget-wide v8, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mMaxVersion:J

    cmp-long v5, v8, v6

    if-lez v5, :cond_c

    cmp-long v3, v3, v8

    if-lez v3, :cond_c

    goto :goto_2

    :cond_c
    :goto_3
    move v3, v0

    :goto_4
    if-eqz v3, :cond_d

    .line 1240
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_d

    .line 1242
    :try_start_2
    invoke-virtual {v3}, Lcom/miui/maml/CommandTrigger;->perform()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move v12, v1

    move-object v1, v0

    move v0, v12

    goto :goto_5

    :catch_1
    move-exception v1

    :goto_5
    :try_start_3
    const-string v3, "IntentCommand"

    const-string v4, "parse min&max version code error"

    .line 1246
    invoke-static {v3, v4, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1252
    :cond_d
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getScreenElement()Lcom/miui/maml/elements/ScreenElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContextAndRect()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1254
    iget-boolean v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mDisableMotionAnim:Z

    if-nez v3, :cond_e

    .line 1255
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const-string v4, "maml_view_location_on_screen"

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1257
    :cond_e
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v3, v2}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 1259
    :cond_f
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v3, v2}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_8

    .line 1261
    :cond_10
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v3, :cond_11

    .line 1264
    :try_start_4
    invoke-virtual {v3}, Lcom/miui/maml/CommandTrigger;->perform()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    move v12, v1

    move-object v1, v0

    move v0, v12

    goto :goto_7

    .line 1267
    :cond_11
    :try_start_5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1268
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1269
    :cond_12
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 1270
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1271
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1272
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1277
    :goto_6
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v3, v1, v4, v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :cond_13
    return-void

    :catch_3
    move-exception v1

    :goto_7
    const-string v2, "ActionCommand"

    if-nez v0, :cond_14

    .line 1294
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_14

    const-string v0, "fail to send Intent, fallback..."

    .line 1295
    invoke-static {v2, v0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->perform()V

    goto :goto_8

    .line 1298
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_8
    return-void
.end method

.method public finish()V
    .locals 0

    .line 1170
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz p0, :cond_0

    .line 1171
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->finish()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 1144
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v1, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->set(Lcom/miui/maml/util/Task;)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1154
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 1155
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 1157
    iget v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1158
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    sget-object v1, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    if-ne v0, v1, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1163
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz p0, :cond_4

    .line 1164
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->init()V

    :cond_4
    return-void
.end method

.method public pause()V
    .locals 0

    .line 1177
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz p0, :cond_0

    .line 1178
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 1184
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz p0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->resume()V

    :cond_0
    return-void
.end method
