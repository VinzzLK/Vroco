.class public final synthetic Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/LauncherApps;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/LauncherApps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/LauncherApps;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/LauncherApps;

    check-cast p1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->$r8$lambda$zAX-vNPmhrene-9yVQfXx-eYCvg(Landroid/content/pm/LauncherApps;Lcom/miui/home/launcher/util/ComponentKey;)V

    return-void
.end method
