package SemanticWeb::Schema::WPHeader;

# ABSTRACT: The header section of the page.

use Moo;

extends qw/ SemanticWeb::Schema::WebPageElement /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The header section of the page.




=cut


around json_ld_type => sub { return 'WPHeader' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::WebPageElement>

=cut

1;
