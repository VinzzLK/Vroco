.class public Lcom/xiaomi/onetrack/c/s;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:I

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/xiaomi/onetrack/c/s;->a:J

    .line 19
    iput-object p3, p0, Lcom/xiaomi/onetrack/c/s;->e:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/xiaomi/onetrack/c/s;->f:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/xiaomi/onetrack/c/s;->b:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/xiaomi/onetrack/c/s;->c:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lcom/xiaomi/onetrack/c/s;->d:Ljava/lang/String;

    .line 24
    iput-object p8, p0, Lcom/xiaomi/onetrack/c/s;->g:[B

    .line 25
    iput-object p9, p0, Lcom/xiaomi/onetrack/c/s;->i:Ljava/util/Map;

    .line 26
    iput-wide p10, p0, Lcom/xiaomi/onetrack/c/s;->j:J

    .line 27
    iput p12, p0, Lcom/xiaomi/onetrack/c/s;->h:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/xiaomi/onetrack/c/s;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/xiaomi/onetrack/c/s;->h:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/xiaomi/onetrack/c/s;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/s;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/s;->i:Ljava/util/Map;

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/s;->g:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/s;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(J)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/xiaomi/onetrack/c/s;->j:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/s;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/s;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/s;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/s;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/s;->f:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/s;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/s;->d:Ljava/lang/String;

    return-void
.end method

.method public f()[B
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/s;->g:[B

    return-object p0
.end method

.method public g()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/xiaomi/onetrack/c/s;->h:I

    return p0
.end method

.method public h()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/s;->i:Ljava/util/Map;

    return-object p0
.end method

.method public i()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/xiaomi/onetrack/c/s;->j:J

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/s;->d:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransformDBData{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/onetrack/c/s;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAppId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mEventName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mProjectID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTopic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/s;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/s;->g:[B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPriority=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/onetrack/c/s;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/s;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/onetrack/c/s;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
