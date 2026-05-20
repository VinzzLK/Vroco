.class public final synthetic Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/BaseActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/BaseActivity;

    iput p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/BaseActivity;

    iget p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->$r8$lambda$qeT7evCcBtViIzj8YssOSwztvQo(Lcom/miui/home/launcher/BaseActivity;I)V

    return-void
.end method
