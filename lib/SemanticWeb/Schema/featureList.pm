use utf8;

package SemanticWeb::Schema::featureList;

# ABSTRACT: Features or modules provided by this application (and possibly required by other applications).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'featureList';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Features or modules provided by this application (and possibly required by
other applications).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
