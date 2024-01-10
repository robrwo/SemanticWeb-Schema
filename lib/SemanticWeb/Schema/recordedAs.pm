use utf8;

package SemanticWeb::Schema::recordedAs;

# ABSTRACT: An audio recording of the work.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recordedAs';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An audio recording of the work.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
