use utf8;

package SemanticWeb::Schema::NonprofitType;

# ABSTRACT: NonprofitType enumerates several kinds of official non-profit types of which a non-profit organization can be.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'NonprofitType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.0';

=encoding utf8

=head1 DESCRIPTION

NonprofitType enumerates several kinds of official non-profit types of
which a non-profit organization can be.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
