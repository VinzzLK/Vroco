.class public Lcom/ot/pubsub/Configuration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ot/pubsub/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/ot/pubsub/Configuration$Builder;->g:Z

    .line 83
    iput-boolean v0, p0, Lcom/ot/pubsub/Configuration$Builder;->h:Z

    .line 85
    iput-boolean v0, p0, Lcom/ot/pubsub/Configuration$Builder;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/ot/pubsub/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ot/pubsub/Configuration$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ot/pubsub/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ot/pubsub/Configuration$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/ot/pubsub/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ot/pubsub/Configuration$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/ot/pubsub/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ot/pubsub/Configuration$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/ot/pubsub/Configuration$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/ot/pubsub/Configuration$Builder;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/ot/pubsub/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ot/pubsub/Configuration$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/ot/pubsub/Configuration$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/ot/pubsub/Configuration$Builder;->g:Z

    return p0
.end method

.method static synthetic h(Lcom/ot/pubsub/Configuration$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/ot/pubsub/Configuration$Builder;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/ot/pubsub/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/ot/pubsub/Configuration$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/ot/pubsub/Configuration$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/ot/pubsub/Configuration$Builder;->j:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/ot/pubsub/Configuration;
    .locals 2

    .line 141
    new-instance v0, Lcom/ot/pubsub/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ot/pubsub/Configuration;-><init>(Lcom/ot/pubsub/Configuration$Builder;Lcom/ot/pubsub/Configuration$1;)V

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/ot/pubsub/Configuration$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ot/pubsub/Configuration$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setInternational(Z)Lcom/ot/pubsub/Configuration$Builder;
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/ot/pubsub/Configuration$Builder;->e:Z

    return-object p0
.end method

.method public setNeedGzipAndEncrypt(Z)Lcom/ot/pubsub/Configuration$Builder;
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/ot/pubsub/Configuration$Builder;->h:Z

    return-object p0
.end method

.method public setOverrideMiuiRegionSetting(Z)Lcom/ot/pubsub/Configuration$Builder;
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/ot/pubsub/Configuration$Builder;->g:Z

    return-object p0
.end method

.method public setPrivateKeyId(Ljava/lang/String;)Lcom/ot/pubsub/Configuration$Builder;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/ot/pubsub/Configuration$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/ot/pubsub/Configuration$Builder;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/ot/pubsub/Configuration$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/ot/pubsub/Configuration$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ot/pubsub/Configuration$Builder;->f:Ljava/lang/String;

    return-object p0
.end method
