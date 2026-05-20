.class Lcom/miui/maml/ActionCommand$PermanenceCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermanenceCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "PermanenceCommand"


# instance fields
.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mNameExp:Lcom/miui/maml/data/Expression;

.field private mRequestUpdate:Z

.field private mType:Lcom/miui/maml/data/VariableType;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 975
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 976
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "nameExp"

    .line 977
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "name"

    .line 981
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mName:Ljava/lang/String;

    :goto_0
    const-string v0, "requestUpdate"

    .line 984
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mRequestUpdate:Z

    const-string v0, "type"

    .line 986
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 987
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 988
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_1

    :cond_1
    const-string v0, "ActionCommand"

    const-string v1, "empty name in PermanenceCommand"

    .line 990
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "expression"

    .line 993
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mExpression:Lcom/miui/maml/data/Expression;

    return-void
.end method

.method private getSharePreferenceHelper()Lcom/miui/maml/util/SharedPreferenceHelper;
    .locals 3

    .line 1042
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "customEditLocalId"

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1043
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1044
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/maml/util/SharedPreferenceHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/maml/util/SharedPreferenceHelper;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .line 998
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$PermanenceCommand;->getSharePreferenceHelper()Lcom/miui/maml/util/SharedPreferenceHelper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    .line 1003
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    .line 1004
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v3, :cond_2

    .line 1005
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 1006
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 1007
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mName:Ljava/lang/String;

    return-void

    .line 1009
    :cond_1
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1010
    iput-object v3, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mName:Ljava/lang/String;

    .line 1011
    new-instance v4, Lcom/miui/maml/data/IndexedVariable;

    iget-object v5, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v5}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    move-result v5

    invoke-direct {v4, v3, v2, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v4, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 1015
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v2, :cond_3

    return-void

    .line 1019
    :cond_3
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto :goto_0

    .line 1029
    :cond_4
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 1030
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v3, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 1031
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/miui/maml/util/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1021
    :cond_5
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_6

    .line 1022
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    .line 1023
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v4, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 1024
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mName:Ljava/lang/String;

    double-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Lcom/miui/maml/util/SharedPreferenceHelper;->save(Ljava/lang/String;F)Z

    .line 1036
    :cond_6
    :goto_0
    iget-boolean p0, p0, Lcom/miui/maml/ActionCommand$PermanenceCommand;->mRequestUpdate:Z

    if-eqz p0, :cond_7

    .line 1037
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_7
    return-void
.end method
