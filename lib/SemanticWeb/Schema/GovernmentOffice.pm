package SemanticWeb::Schema::GovernmentOffice;

# ABSTRACT: A government office&#x2014;for example

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A government office&#x2014;for example, an IRS or DMV office.




=cut


around json_ld_type => sub { return 'GovernmentOffice' };

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
