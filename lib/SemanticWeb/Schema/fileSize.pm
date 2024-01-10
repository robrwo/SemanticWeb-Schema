use utf8;

package SemanticWeb::Schema::fileSize;

# ABSTRACT: Size of the application / package (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'fileSize';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Size of the application / package (e.g. 18MB). In the absence of a unit
(MB, KB etc.), KB will be assumed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
