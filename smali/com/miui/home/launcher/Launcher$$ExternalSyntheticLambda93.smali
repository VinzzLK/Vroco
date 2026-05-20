.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda93;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda93;->f$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda93;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda93;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda93;->f$0:Lcom/miui/home/launcher/Launcher;

    iget v1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda93;->f$1:I

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda93;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$VK1Wu239ZsjSPZzTi1OId6kDXeQ(Lcom/miui/home/launcher/Launcher;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
