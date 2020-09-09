use utf8;

package SemanticWeb::Schema::LiquorStore;

# ABSTRACT: A shop that sells alcoholic drinks such as wine

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'LiquorStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

A shop that sells alcoholic drinks such as wine, beer, whisky and other
spirits.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
