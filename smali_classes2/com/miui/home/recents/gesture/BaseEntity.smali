.class public Lcom/miui/home/recents/gesture/BaseEntity;
.super Ljava/lang/Object;
.source "NavStubEventEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/gesture/BaseEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/gesture/BaseEntity$Companion;


# instance fields
.field private entityType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entityType"
    .end annotation
.end field

.field private final priority:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priority"
    .end annotation
.end field

.field private triggerType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "triggerType"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/gesture/BaseEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/gesture/BaseEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/gesture/BaseEntity;->Companion:Lcom/miui/home/recents/gesture/BaseEntity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 226
    iput v0, p0, Lcom/miui/home/recents/gesture/BaseEntity;->triggerType:I

    const/16 v0, 0x63

    .line 228
    iput v0, p0, Lcom/miui/home/recents/gesture/BaseEntity;->priority:I

    return-void
.end method


# virtual methods
.method public final getTriggerType()I
    .locals 0

    .line 226
    iget p0, p0, Lcom/miui/home/recents/gesture/BaseEntity;->triggerType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseEntity(entityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/gesture/BaseEntity;->entityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", triggerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/gesture/BaseEntity;->triggerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/gesture/BaseEntity;->priority:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
