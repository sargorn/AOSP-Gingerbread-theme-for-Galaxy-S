.class Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;
.super Ljava/lang/Object;
.source "RecentApplicationsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 73
    iget-object v4, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v0, v4, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 74
    .local v1, b:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-static {v4, v1, v5, v5}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->access$000(Lcom/android/internal/policy/impl/RecentApplicationsDialog;Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 77
    .end local v1           #b:Landroid/view/View;
    :cond_16
    return-void
.end method
