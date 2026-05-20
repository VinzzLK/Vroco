.class public abstract Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseWidgetsVerticalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;,
        Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;,
        Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

.field protected static final sCategoryMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDisabledComponents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sShortcutProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sToggles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field protected mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mScreenType:I

.field private mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;


# direct methods
.method public static synthetic $r8$lambda$E-ftGd74_F4BG-P8WGfPtdpu3YE(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->lambda$onBindViewHolder$3(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HM3-4f-LbPrfmGBJtdeHDQD7muE(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->lambda$onBindViewHolder$1(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JQDQPsc03V91M28WZOkXCbpQv6c(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->lambda$onBindViewHolder$2(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bLnjfOcXDNJdEd6mppIgWvxM68w(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ShortcutProviderInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->lambda$getValidShortcutProviderInfos$0(Lcom/miui/home/launcher/ShortcutProviderInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k6VG1YFj74ydIcq7yLa_nc4DCq0(Ljava/util/concurrent/Callable;Ljava/lang/Void;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->lambda$setViewHolderAsync$4(Ljava/util/concurrent/Callable;Ljava/lang/Void;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p5nEAaMpm_8Hd_F_HIcxh1w_BDk(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->lambda$setViewHolderAsync$5(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    .line 84
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.ContactShortcut"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    .line 89
    new-instance v3, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-direct {v3, v1}, Lcom/miui/home/launcher/ShortcutProviderInfo;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    const-string v2, "com.android.alarmclock.AnalogAppWidgetProvider"

    .line 92
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const/4 v2, 0x6

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.android.calendar"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.xiaomi.calendar"

    .line 99
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.miui.notes"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.miui.player"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x8

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.android.calculator2"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.miui.weather2"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xf

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xb

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x9

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    .line 119
    iput-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-object p0
.end method

.method private buildAppWidgetsItems(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 239
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 240
    iget-object v2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->needsHideFromPicker()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMinusScreen2x1Enabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 248
    :cond_1
    iget-boolean v3, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 253
    :cond_2
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_3

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 254
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.mi.globalminusscreen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 259
    :cond_3
    iget-object v1, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 261
    :cond_4
    sget-object v3, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 262
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mWidgetCategory:I

    .line 264
    :cond_5
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private buildDualClockItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 161
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    const/16 v0, 0x8

    .line 162
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private buildFirstLineItems(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xc

    .line 168
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 171
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 172
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    new-instance v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;-><init>(I)V

    .line 178
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ToggleId"

    .line 179
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    iput-object v5, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 181
    iget-object v5, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->loadToggleInfo(Landroid/content/Context;)V

    const/4 v5, 0x3

    .line 182
    iput v5, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 183
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "toggle id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ItemInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", name res = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {v3}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getName(I)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WidgetsVerticalAdapter"

    .line 185
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->getValidShortcutProviderInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    .line 189
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 192
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private buildGadgetItems(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getAllGadgetNum()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 199
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetInfoByIndex(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 201
    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildThemeClockItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 207
    invoke-static {}, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->getStorageClocks()Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    .line 209
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getThemeClockGadgetInfo(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getValidShortcutProviderInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutProviderInfo;",
            ">;"
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)V

    .line 124
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 125
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$getValidShortcutProviderInfos$0(Lcom/miui/home/launcher/ShortcutProviderInfo;)Z
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    .line 305
    iget p1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mCurrentItemPosition:I

    if-ne p1, p2, :cond_0

    .line 306
    check-cast p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 307
    iget-object p1, p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 308
    iget-object p2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/miui/home/launcher/ScreenUtils;->getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    .line 309
    iget-object p1, p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    .line 316
    iget p1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mCurrentItemPosition:I

    if-ne p1, p2, :cond_2

    .line 317
    check-cast p3, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    .line 318
    iget p1, p3, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 319
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f100517

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    .line 321
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f100473

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 323
    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-object v0
.end method

.method private synthetic lambda$onBindViewHolder$3(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    .line 330
    iget p1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mCurrentItemPosition:I

    if-ne p1, p2, :cond_0

    .line 331
    check-cast p3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 332
    iget-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    .line 333
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$setViewHolderAsync$4(Ljava/util/concurrent/Callable;Ljava/lang/Void;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 0

    .line 347
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 349
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setViewHolderAsync$5(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 354
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 355
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_0
    iget-object p1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 358
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract buildSecondLineItems(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public initAllItems()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->getInstalledProvidersForAllUser(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->loadMtzGadgetList()V

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_3

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 136
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.player"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 138
    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_0
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-gtz v3, :cond_1

    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v3, :cond_1

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 140
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.cts.verifier"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove no size widget = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WidgetsVerticalAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    :cond_1
    sget-object v3, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 149
    :cond_3
    sget-object v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildFirstLineItems(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 150
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildSecondLineItems(Ljava/util/ArrayList;)V

    .line 151
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildGadgetItems(Ljava/util/ArrayList;)V

    .line 152
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildDualClockItems(Ljava/util/ArrayList;)V

    .line 153
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildThemeClockItems(Ljava/util/ArrayList;)V

    .line 154
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildAppWidgetsItems(Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    .line 217
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 218
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 221
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->isSameWidgetCategory(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    .line 230
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected isSameWidgetCategory(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;)Z
    .locals 3

    .line 269
    instance-of p0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    instance-of p0, p2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz p0, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryString()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    if-eq p0, v2, :cond_1

    .line 274
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 270
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryId()I

    move-result p0

    const/16 v2, -0x3e7

    if-eq p0, v2, :cond_3

    .line 271
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryId()I

    move-result p0

    invoke-interface {p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryId()I

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V
    .locals 5

    if-nez p2, :cond_0

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070743

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 288
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 289
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 292
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iput p2, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mCurrentItemPosition:I

    if-nez p2, :cond_1

    .line 296
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f100549

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 297
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    const v1, 0x7f080709

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 302
    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_2

    .line 303
    new-instance v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    goto :goto_1

    .line 313
    :cond_2
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    if-eqz v1, :cond_3

    .line 314
    new-instance v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    goto :goto_1

    .line 327
    :cond_3
    instance-of v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v1, :cond_4

    .line 328
    new-instance v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;ILcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    .line 340
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setItemInfos(Ljava/util/ArrayList;)V

    .line 341
    iget-object p0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;
    .locals 2

    .line 280
    iget-object p2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0182

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 281
    new-instance p2, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setScreenType(I)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mScreenType:I

    return-void
.end method

.method protected setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;",
            ">;)V"
        }
    .end annotation

    .line 345
    new-instance p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p2, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;)V

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
