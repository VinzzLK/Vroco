.class public final synthetic Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

    iput p2, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

    iget v1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->$r8$lambda$wbSvRdYhOzNfqBc5bMsJFYLRqFw(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;II)V

    return-void
.end method
