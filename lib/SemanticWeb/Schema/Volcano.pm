package SemanticWeb::Schema::Volcano;

# ABSTRACT: A volcano, like Fuji san.

use Moo;

extends qw/ SemanticWeb::Schema::Landform /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A volcano, like Fuji san.




=cut


around json_ld_type => sub { return 'Volcano' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Landform>

=cut

1;
