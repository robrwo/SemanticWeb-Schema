package SemanticWeb::Schema::ScholarlyArticle;

# ABSTRACT: A scholarly article.

use Moo;

extends qw/ SemanticWeb::Schema::Article /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A scholarly article.




=cut


around json_ld_type => sub { return 'ScholarlyArticle' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Article>

=cut

1;
