.class Lcom/miui/home/settings/MiuiHomeSettings$CustomFactory;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/MiuiHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings$1;)V
    .locals 0

    .line 1350
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings$CustomFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const-string p0, "miuix.recyclerview.widget.RecyclerView"

    .line 1353
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1354
    new-instance p0, Lcom/miui/home/settings/preference/PreferenceListView;

    invoke-direct {p0, p3, p4}, Lcom/miui/home/settings/preference/PreferenceListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
