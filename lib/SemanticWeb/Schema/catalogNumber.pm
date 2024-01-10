use utf8;

package SemanticWeb::Schema::catalogNumber;

# ABSTRACT: The catalog number for the release.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'catalogNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The catalog number for the release.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
