.class public Lmiuix/animation/controller/FolmeState;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Lmiuix/animation/controller/IFolmeStateStyle;


# instance fields
.field mConfigLink:Lmiuix/animation/base/AnimConfigLink;

.field private mEnableAnim:Z

.field mStateMgr:Lmiuix/animation/controller/StateManager;

.field final mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method public static synthetic $r8$lambda$s_7rwwPnSOs8qAPYW6JWGXaqZWg(Lmiuix/animation/controller/FolmeState;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->lambda$setFlags$0(J)V

    return-void
.end method

.method constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lmiuix/animation/controller/StateManager;

    invoke-direct {v0}, Lmiuix/animation/controller/StateManager;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 32
    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mConfigLink:Lmiuix/animation/base/AnimConfigLink;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    .line 37
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    return-void
.end method

.method static synthetic access$000(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeState;->doSetTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;Z)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/base/AnimConfigLink;
    .locals 0

    .line 27
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeState;->doFromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$302(Lmiuix/animation/controller/FolmeState;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    return p1
.end method

.method private varargs doFromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .locals 7

    .line 68
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    move-result-object v0

    .line 69
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p3, v3

    new-array v5, v2, [Z

    .line 70
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-boolean p3, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    if-nez p3, :cond_1

    return-void

    .line 75
    :cond_1
    iget-object p3, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p3, p2}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 79
    :cond_2
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    .line 80
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v1, p3, v0}, Lmiuix/animation/controller/StateManager;->addTempConfig(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 81
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\n\ttoState:"

    const-string v3, "-> do FolmeState fromTo from:"

    const/4 v4, 0x1

    if-ne p2, p3, :cond_3

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\tto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-> do FolmeState fromTo configLink:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_4
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    invoke-static {v1, p1, p2, v0}, Lmiuix/animation/FolmeFactory;->fromToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 93
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0, p3}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    .line 94
    invoke-virtual {v0}, Lmiuix/animation/base/AnimConfigLink;->clear()V

    return-void
.end method

.method private doSetTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;Z)V
    .locals 5

    .line 48
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 56
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-> do FolmeState.setTo, tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_2
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/animation/internal/AnimManager;->setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Z)Z

    .line 60
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    .line 61
    invoke-virtual {p2}, Lmiuix/animation/base/AnimConfigLink;->clear()V

    return-void

    :cond_3
    :goto_0
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    .line 52
    invoke-virtual {p0, p3}, Lmiuix/animation/controller/FolmeState;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private getConfigLink()Lmiuix/animation/base/AnimConfigLink;
    .locals 0

    .line 41
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mConfigLink:Lmiuix/animation/base/AnimConfigLink;

    return-object p0
.end method

.method private synthetic lambda$setFlags$0(J)V
    .locals 0

    .line 612
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/IAnimTarget;->setFlags(J)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 771
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_1

    .line 772
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 774
    instance-of p1, v0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p1, :cond_0

    .line 775
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;I)V

    goto :goto_0

    .line 777
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;F)V

    :goto_0
    return-object p0

    .line 782
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;F)V

    return-object p0
.end method

.method public add(Ljava/lang/String;FJ)Lmiuix/animation/IStateStyle;
    .locals 3

    .line 788
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_2

    .line 789
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 791
    instance-of p1, v0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p1, :cond_0

    .line 792
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x4

    cmp-long p1, p3, v1

    if-nez p1, :cond_1

    .line 795
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;F)V

    goto :goto_0

    .line 797
    :cond_1
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p1, v0, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;FJ)V

    :goto_0
    return-object p0

    .line 803
    :cond_2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;FJ)V

    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 754
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_1

    .line 755
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 757
    instance-of p1, v0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p1, :cond_0

    .line 758
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;I)V

    goto :goto_0

    .line 760
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;F)V

    :goto_0
    return-object p0

    .line 765
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Ljava/lang/String;IJ)Lmiuix/animation/IStateStyle;
    .locals 3

    .line 715
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_2

    .line 716
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 718
    instance-of p1, v0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p1, :cond_0

    .line 719
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p1, v0, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x4

    cmp-long p1, p3, v1

    if-nez p1, :cond_1

    .line 722
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;F)V

    goto :goto_0

    .line 724
    :cond_1
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;FJ)V

    :goto_0
    return-object p0

    .line 730
    :cond_2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 742
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;F)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;FJ)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 748
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;FJ)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 736
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;I)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;IJ)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 709
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;IJ)V

    return-object p0
.end method

.method public varargs addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 879
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FolmeState.addConfig warning!! this interface can not work, target:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 882
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-> addConfig by trace:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    invoke-static {p2}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addInitProperty(Ljava/lang/String;F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 692
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_1

    .line 693
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    instance-of p1, v0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p1, :cond_0

    .line 696
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;I)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;F)V

    :goto_0
    return-object p0

    .line 703
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Ljava/lang/String;F)V

    return-object p0
.end method

.method public addInitProperty(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 675
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_1

    .line 676
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 678
    instance-of p1, v0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p1, :cond_0

    .line 679
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;I)V

    goto :goto_0

    .line 681
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;F)V

    :goto_0
    return-object p0

    .line 686
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 669
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;F)V

    return-object p0
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 663
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;I)V

    return-object p0
.end method

.method public addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 651
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->addListener(Lmiuix/animation/listener/TransitionListener;)V

    return-object p0
.end method

.method public addState(Lmiuix/animation/controller/AnimState;)V
    .locals 0

    .line 623
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->addState(Lmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method public varargs autoSetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 0

    return-object p0
.end method

.method public cancel()V
    .locals 2

    .line 440
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolmeState.cancel empty params target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/controller/FolmeState$12;

    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeState$12;-><init>(Lmiuix/animation/controller/FolmeState;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancel(Lmiuix/animation/controller/AnimState;)V
    .locals 2

    .line 457
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolmeState.cancel with state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/controller/FolmeState$13;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/controller/FolmeState$13;-><init>(Lmiuix/animation/controller/FolmeState;Lmiuix/animation/controller/AnimState;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .locals 3

    .line 499
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolmeState.cancel PropertyNames target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> cancel by trace:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    :cond_0
    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->cancel()V

    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/controller/FolmeState$15;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/controller/FolmeState$15;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .locals 3

    .line 474
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolmeState.cancel FloatProperties target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> cancel by trace:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    :cond_0
    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->cancel()V

    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/controller/FolmeState$14;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/controller/FolmeState$14;-><init>(Lmiuix/animation/controller/FolmeState;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clean()V
    .locals 2

    .line 424
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolmeState.clean "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " trace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/controller/FolmeState$11;

    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeState$11;-><init>(Lmiuix/animation/controller/FolmeState;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableDefaultAnim(Z)V
    .locals 0

    .line 419
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 3

    .line 524
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolmeState.end propertyList target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> end by trace:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/controller/FolmeState$16;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/controller/FolmeState$16;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 9

    .line 388
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FolmeState.fromTo enter from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "target "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-> fromTo by trace:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v2

    .line 400
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "setTo propertyAndValues from=\"%s\", to=\"%s\", trace: %s"

    .line 399
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 398
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "warning!! FolmeState.fromTo target is null!!"

    .line 404
    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object p0

    .line 408
    :cond_3
    new-instance v0, Lmiuix/animation/controller/FolmeState$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeState$10;-><init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public getCurrentState()Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 840
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public getPredictFriction(Lmiuix/animation/property/FloatProperty;F)F
    .locals 3

    .line 861
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 865
    :cond_0
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v1, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v1

    .line 866
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-static {p0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v2, p0

    const/4 p0, 0x1

    new-array p0, p0, [F

    const/4 p1, 0x0

    aput v2, p0, p1

    .line 867
    invoke-static {v1, p2, v0, p0}, Lmiuix/animation/Folme;->getPredictFriction(FFF[F)F

    move-result p0

    return p0
.end method

.method public varargs getPredictValue(Lmiuix/animation/property/FloatProperty;[F)F
    .locals 4

    .line 845
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 846
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v1, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v1

    .line 847
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-static {p0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide p0

    double-to-float p0, p0

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 849
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, p1

    :cond_0
    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 852
    array-length v3, p2

    if-nez v3, :cond_1

    goto :goto_1

    .line 855
    :cond_1
    aget p2, p2, v2

    new-array p1, p1, [F

    aput p0, p1, v2

    invoke-static {v0, p2, p1}, Lmiuix/animation/Folme;->getPredictDistanceWithFriction(FF[F)F

    move-result p0

    :goto_0
    add-float/2addr v1, p0

    return v1

    :cond_2
    :goto_1
    new-array p1, p1, [F

    aput p0, p1, v2

    .line 853
    invoke-static {v0, p1}, Lmiuix/animation/Folme;->getPredictDistance(F[F)F

    move-result p0

    goto :goto_0
.end method

.method public getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 618
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public getTarget()Lmiuix/animation/IAnimTarget;
    .locals 0

    .line 98
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    return-object p0
.end method

.method public varargs predictDuration([Ljava/lang/Object;)J
    .locals 3

    .line 562
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolmeState.predictDuration target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> predictDuration by trace:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    :cond_0
    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    .line 569
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    iget-object v2, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v1, v2, v0, p1}, Lmiuix/animation/controller/StateManager;->getToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 570
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Lmiuix/animation/internal/PredictTask;->predictDuration(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)J

    move-result-wide v1

    .line 571
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    .line 572
    invoke-virtual {v0}, Lmiuix/animation/base/AnimConfigLink;->clear()V

    return-wide v1
.end method

.method public removeListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 657
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->removeListener(Lmiuix/animation/listener/TransitionListener;)V

    return-object p0
.end method

.method public resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 168
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/controller/FolmeState;->resetTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs resetTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 8

    .line 173
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FolmeState.resetTo tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-> resetTo by trace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 183
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "resetTo tag=\"%s\", trace: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 182
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "-> warning!! FolmeState.resetTo target is null!!"

    .line 187
    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object p0

    .line 191
    :cond_3
    new-instance v0, Lmiuix/animation/controller/FolmeState$3;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeState$3;-><init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 7

    .line 202
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "FolmeState.resetTo propertyAndValues"

    invoke-static {v5, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-> resetTo by trace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 211
    iget-object v5, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    aput-object v5, v4, v3

    .line 212
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "resetTo propertyAndValues target=\"%s\", trace: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 211
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "warning!! FolmeState.resetTo target is null!!"

    .line 216
    invoke-static {v0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object p0

    .line 220
    :cond_3
    new-instance v0, Lmiuix/animation/controller/FolmeState$4;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/controller/FolmeState$4;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public set(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 645
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public varargs setConfig(Lmiuix/animation/base/AnimConfig;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public varargs setEase(I[F)Lmiuix/animation/IStateStyle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 822
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->setEase(I[F)V

    return-object p0
.end method

.method public varargs setEase(I[Lmiuix/animation/physics/FactorOperator;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 834
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->setEase(I[Lmiuix/animation/physics/FactorOperator;)V

    return-object p0
.end method

.method public varargs setEase(Lmiuix/animation/property/FloatProperty;I[F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 828
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/StateManager;->setEase(Lmiuix/animation/property/FloatProperty;I[F)V

    return-object p0
.end method

.method public varargs setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 815
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)V

    return-object p0
.end method

.method public setFlags(J)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 609
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_0

    return-object p0

    .line 612
    :cond_0
    new-instance v1, Lmiuix/animation/controller/FolmeState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/animation/controller/FolmeState$$ExternalSyntheticLambda0;-><init>(Lmiuix/animation/controller/FolmeState;J)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 103
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 8

    .line 108
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FolmeState.setTo tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-> setTo by trace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 118
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "setTo tag=\"%s\", trace: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 117
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "-> warning!! FolmeState.setTo target is null!!"

    .line 122
    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object p0

    .line 126
    :cond_3
    new-instance v0, Lmiuix/animation/controller/FolmeState$1;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeState$1;-><init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 7

    .line 137
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "FolmeState.setTo propertyAndValues"

    invoke-static {v5, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-> setTo by trace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 146
    iget-object v5, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    aput-object v5, v4, v3

    .line 147
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "setTo propertyAndValues target=\"%s\", trace: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 146
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "warning!! FolmeState.setTo target is null!!"

    .line 151
    invoke-static {v0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object p0

    .line 155
    :cond_3
    new-instance v0, Lmiuix/animation/controller/FolmeState$2;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/controller/FolmeState$2;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs setTransitionFlags(J[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 872
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lmiuix/animation/controller/StateManager;->setTransitionFlags(Ljava/lang/Object;J[Lmiuix/animation/property/FloatProperty;)V

    return-object p0
.end method

.method public setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 7

    .line 628
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FolmeState.setup tag:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-> setup by trace:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 637
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "setup tag=\"%s\", trace: %s"

    .line 636
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "folme_design"

    .line 635
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public varargs then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 7

    .line 329
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "FolmeState.then tag with oneTimeConfig"

    invoke-static {v5, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-> to by trace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 338
    iget-object v5, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    aput-object v5, v4, v3

    .line 339
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "to tag with oneTimeConfig target=\"%s\", trace: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 338
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "warning!! FolmeState.to target is null!!"

    .line 343
    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object p0

    .line 347
    :cond_3
    new-instance v0, Lmiuix/animation/controller/FolmeState$8;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeState$8;-><init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 4

    .line 578
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolmeState.then target:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-> then by trace:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 585
    iget-object v3, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 587
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "then propertyAndValues target=\"%s\", trace: %s"

    .line 586
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "folme_design"

    .line 585
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/controller/FolmeState$17;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/controller/FolmeState$17;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 8

    .line 262
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    .line 263
    instance-of v1, p1, Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v1, p1}, Lmiuix/animation/controller/StateManager;->hasState(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 290
    array-length v1, p2

    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 291
    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    array-length p1, p2

    invoke-static {p2, v4, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    invoke-virtual {p0, v1}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v3

    .line 295
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 v1, 0x5

    if-eqz v0, :cond_3

    new-array v5, v3, [Ljava/lang/Object;

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "FolmeState.to tag with oneTimeConfig"

    invoke-static {v6, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-> to by trace:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_3
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    new-array v2, v2, [Ljava/lang/Object;

    .line 272
    iget-object v5, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    aput-object v5, v2, v4

    .line 273
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "to tag with oneTimeConfig target=\"%s\", trace: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 272
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_4
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "warning!! FolmeState.to target is null!!"

    .line 277
    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object p0

    .line 281
    :cond_6
    new-instance v0, Lmiuix/animation/controller/FolmeState$6;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeState$6;-><init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 7

    .line 300
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "FolmeState.to propertyAndValues"

    invoke-static {v5, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-> to by trace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 309
    iget-object v5, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    aput-object v5, v4, v3

    .line 310
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "to propertyAndValues target=\"%s\", trace: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 309
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "warning!! FolmeState.to target is null!!"

    .line 314
    invoke-static {v0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object p0

    .line 318
    :cond_3
    new-instance v0, Lmiuix/animation/controller/FolmeState$7;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/controller/FolmeState$7;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 7

    .line 233
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "FolmeState.to oneTimeConfig"

    invoke-static {v5, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-> to by trace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 242
    iget-object v5, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    aput-object v5, v4, v3

    .line 243
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "to oneTimeConfig target=\"%s\", trace: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 242
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "warning!! FolmeState.to target is null!!"

    .line 247
    invoke-static {v0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object p0

    .line 251
    :cond_3
    new-instance v0, Lmiuix/animation/controller/FolmeState$5;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/controller/FolmeState$5;-><init>(Lmiuix/animation/controller/FolmeState;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs toWithInit([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 7

    .line 359
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "FolmeState.toWithInit propertyAndValues"

    invoke-static {v5, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-> toWithInit by trace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 368
    iget-object v5, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    aput-object v5, v4, v3

    .line 369
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "toWithInit propertyAndValues target=\"%s\", trace: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folme_design"

    .line 368
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "warning!! FolmeState.toWithInit target is null!!"

    .line 373
    invoke-static {v0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object p0

    .line 377
    :cond_3
    new-instance v0, Lmiuix/animation/controller/FolmeState$9;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/controller/FolmeState$9;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-object p0
.end method
