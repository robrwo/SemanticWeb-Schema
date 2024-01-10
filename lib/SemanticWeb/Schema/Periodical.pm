use utf8;

package SemanticWeb::Schema::Periodical;

# ABSTRACT: A publication in any medium issued in successive parts bearing numerical or chronological designations and intended to continue indefinitely

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeries /;


use MooX::JSON_LD 'Periodical';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A publication in any medium issued in successive parts bearing numerical or
chronological designations and intended to continue indefinitely, such as a
magazine, scholarly journal, or newspaper. See also [blog
post](http://blog.schema.org/2014/09/schemaorg-support-for-bibliographic_2.
html).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeries>

=cut

1;
