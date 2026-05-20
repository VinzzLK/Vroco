.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda33;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda33;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda33;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda33;->f$1:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$IQfzcyHkbGRjx3lNqK7R2taxJO8(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method
