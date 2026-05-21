.class public Lcom/miui/home/launcher/util/ClosingAppInfo;
.super Ljava/lang/Object;
.source "ClosingAppInfo.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final isAppPair:Z

.field public final isIconLayoutFromSoscChange:Z

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;IZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    .line 21
    iput p2, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->userId:I

    .line 22
    iput-boolean p3, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->isAppPair:Z

    .line 23
    iput-boolean p4, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->isIconLayoutFromSoscChange:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClosingAppInfo{componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAppPair="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->isAppPair:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isIconLayoutFromSoscChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/util/ClosingAppInfo;->isIconLayoutFromSoscChange:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
