.class public final synthetic Lcom/miui/home/launcher/util/MainThreadInitializedObject$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/util/MainThreadInitializedObject$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    iput-object p2, p0, Lcom/miui/home/launcher/util/MainThreadInitializedObject$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/util/MainThreadInitializedObject$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/miui/home/launcher/util/MainThreadInitializedObject$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->$r8$lambda$qBYlsW1a0gzGc2hwqW9udA_qjeg(Lcom/miui/home/launcher/util/MainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
