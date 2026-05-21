.class public Lcom/miui/home/launcher/guide/StartUpGuideFactory;
.super Ljava/lang/Object;
.source "StartUpGuideFactory.java"


# direct methods
.method public static create(Landroid/content/Context;)Lcom/miui/home/launcher/guide/StartUpGuide;
    .locals 1

    .line 13
    new-instance v0, Lcom/miui/home/launcher/guide/DefaultLauncherGuide;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/guide/DefaultLauncherGuide;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
