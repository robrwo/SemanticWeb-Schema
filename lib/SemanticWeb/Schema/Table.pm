package SemanticWeb::Schema::Table;

# ABSTRACT: A table on a Web page.

use Moo;

extends qw/ SemanticWeb::Schema::WebPageElement /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A table on a Web page.




=cut


around json_ld_type => sub { return 'Table' };

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
