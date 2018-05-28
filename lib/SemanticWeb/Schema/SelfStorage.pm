package SemanticWeb::Schema::SelfStorage;

# ABSTRACT: A self-storage facility.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A self-storage facility.




=cut


around json_ld_type => sub { return 'SelfStorage' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
